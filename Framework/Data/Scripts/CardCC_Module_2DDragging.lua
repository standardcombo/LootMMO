local componentName = '2D_Dragging'

local Root = script:GetCustomProperty('Root'):WaitForObject()
local DatabaseName = Root:GetCustomProperty('DatabaseName')
local HoverEnabled = Root:GetCustomProperty('HoverEnabled')
local ResetTime = Root:GetCustomProperty('ResetTime')
local singleCardDrag = Root:GetCustomProperty("SingleCardDrag")

local DragDistance = Root:GetCustomProperty('DragDistance')
local DragDistanceSqr = DragDistance * DragDistance
local touchLocation
local currentLocation
local deltaCursorTask
local isDragging = false
local dragging  
local CardCC_DatabaseApi = require(script:GetCustomProperty('CardCC_DatabaseApi'))
local database = CardCC_DatabaseApi.WaitForDatabase(DatabaseName)
local CardCC_Class_Card = database.cardTemplate
database:AddComponent(componentName)

function GrabUtils()
    local endtime = time() + 1
    while not _G.CC_Util do
        -- statements
        Task.Wait()
        if endtime < time() then
            error('No CC_Util found')
            return
        end
    end
    return _G.CC_Util
end
local utils = GrabUtils()
local luaEvents = utils:WaitForlibrary('Lua Event', 1.1)
local UI_Utilities = utils:WaitForlibrary('UI_Utilities', 0.3)

local pressedEvent = luaEvents.New()
local releaseEvent = luaEvents.New()
local clickEvent = luaEvents.New()
local dragEvent = luaEvents.New()



CardCC_Class_Card.isUp = true
CardCC_Class_Card.isHoverd = false
CardCC_Class_Card.isInteractable = true
CardCC_Class_Card.dragged = false
CardCC_Class_Card.canBeHovered = true
CardCC_Class_Card.isDraggable = true
CardCC_Class_Card.isClickable = true

local function UiToVector2(panel)
    if Object.IsValid(panel) then 
        return Vector2.New(panel.x, panel.y)
    end
end

function CardCC_Class_Card:IsHoveringOver()
    if not Object.IsValid(self.spawnedCard) or not self.canBeHovered then
        return false
    end
    return UI_Utilities.IsCursorOver(self.spawnedCard)
end

function CardCC_Class_Card:Click()
    if self.isClickable then
        self.clickedEvent:Trigger(self)
    end
end

function CardCC_Class_Card:Drag()
    if self.isDraggable then
        if singleCardDrag then 
            if dragging then 
                local sameParent = self.spawnedCard.parent == dragging.spawnedCard.parent
                local sortOrder =0 
                local otherSortOrder = 0
                for index, value in ipairs(self.spawnedCard.parent:GetChildren()) do
                    if value == self.spawnedCard then sortOrder = index end 
                    if value == dragging.spawnedCard then otherSortOrder = index end 
                end
 
                if sameParent and sortOrder < otherSortOrder then  
                    return
                end
                dragging.dragged = false
            end
            dragging = self  
            

        end 
        self.returnPosition = self:GetLocalPosition()
        self.dragged = true
        local StartPosition = UiToVector2(self.spawnedCard)
        local StartCursor = Input.GetCursorPosition()
        Task.Spawn(
            function()
                if dragging ~= self then
                    return 
                end 
                self.draggedEvent:Trigger(self)
                while self.dragged and Object.IsValid(self.spawnedCard) do
                    local offset = Input.GetCursorPosition() - StartCursor
                    self.spawnedCard.x = StartPosition.x + offset.x
                    self.spawnedCard.y = StartPosition.y + offset.y
                    Task.Wait()
                end
            end
        )
    end
end

function CardCC_Class_Card:Drop()
    self.dropEvent:Trigger(self, self:GetPosition())
end

function  CardCC_Class_Card:SetResetPosition(pos)
    if pos and pos:IsA("Vector2") then  
        self.returnPosition = pos
    end 
end 

function CardCC_Class_Card:SetPosition(newPos)
    if not self.spawnedCard or not newPos then
        return
    end
    self.spawnedCard.x = newPos.x
    self.spawnedCard.y = newPos.y
    self.returnPosition = newPos
end
function CardCC_Class_Card:MoveTo(position, tme)
    if not self.spawnedCard then
        return
    end
    Task.Spawn(
        function()
            tme = tme or .1
            self._isInteractable = false
            local startTime = time()
            local endtime = startTime + tme
            local startpos = UiToVector2(self.spawnedCard)
            while time() < endtime and Object.IsValid(self.spawnedCard) do
                self._isInteractable = false
                local newPos = Vector2.Lerp(startpos, position, (time() - startTime) / tme)
                self.spawnedCard.x = newPos.x
                self.spawnedCard.y = newPos.y
                Task.Wait()
            end
            if Object.IsValid(self.spawnedCard) then
                self.spawnedCard.x = position.x
                self.spawnedCard.y = position.y
            end
            self._isInteractable = true
        end
    )
end
function CardCC_Class_Card:ResetPosition()
    if not self.spawnedCard or not self.returnPosition then
        return
    end
    self:MoveTo(self.returnPosition, ResetTime)
end

function CardCC_Class_Card:GetSpawnedCard()
    return self.spawnedCard
end

function CardCC_Class_Card:GetPosition()
    if self.spawnedCard then
        local cardAbsolutePositionx, cardAbsolutePositiony = UI_Utilities.GetAbsolutePosition(self.spawnedCard)
        self.position = Vector2.New(cardAbsolutePositionx, cardAbsolutePositiony)
        return self.position
    end
end

function CardCC_Class_Card:GetLocalPosition()
    if self.spawnedCard then
        return UiToVector2(self.spawnedCard)
    end
end

function CardCC_Class_Card:Update()
end

function CardCC_Class_Card:HoverCheck()
    local hovered = self:IsHoveringOver()
    if hovered ~= self.isHoverd then
        if hovered then
            self.hoveredEvent:Trigger(self)
        else
            self.unhoveredEvent:Trigger(self)
        end
        self.isHoverd = hovered
    end
end

function CardCC_Class_Card:UnspawnCard()
    if Object.IsValid(self.spawnedCard) then
        self.spawnedCard:Destroy()
    end
end

function CardCC_Class_Card:SpawnCard(optinalParams)
    if Object.IsValid(self.spawnedCard) then
        self.spawnedCard:Destroy()
    end
    optinalParams = optinalParams or {}
    local showback = optinalParams.showBack
    optinalParams.showBack = nil

    if showback then
        self.spawnedCard = self:RenderBack(optinalParams)
        self.isUp = false
    else
        self.spawnedCard = self:RenderFront(optinalParams)
    end
    return self.spawnedCard
end

function CardCC_Class_Card:FlipCard(optinalParams)
    optinalParams = optinalParams or {}
    local pos
    local scale
    if Object.IsValid(self.spawnedCard) then
        pos = UiToVector2(self.spawnedCard)
        scale = Vector2.New(self.spawnedCard.width, self.spawnedCard.height)
        optinalParams.parent = self.spawnedCard.parent
        self.spawnedCard:Destroy()
    end

    if self.isUp then
        self.spawnedCard = self:RenderBack(optinalParams)
    else
        self.spawnedCard = self:RenderFront(optinalParams)
    end
    if not pos then return end 

    self.spawnedCard.x = pos.x
    self.spawnedCard.y = pos.y
    UI_Utilities.ScaleUIElement(self.spawnedCard, scale.x, scale.y)
    self.isUp = not self.isUp
    
    return self.spawnedCard
end
function ClearInteractTasks(card)
    if not card.interactTasks then
        return
    end
    for index, value in ipairs(card.interactTasks) do
        value:Cancel()
    end
    card.interactTasks = {}
end
function ClearInteractEvents(card)
    if not card.interactEvents then
        return
    end
    for index, value in ipairs(card.interactEvents) do
        if value.isConnected then
            value:Disconnect()
        end
    end
    card.interactEvents = {}
end

function Drag()
    isDragging = true
    dragEvent:Trigger()
end

function Click()
    clickEvent:Trigger()
end

function Destroyed(card)
    ClearInteractTasks(card)
    ClearInteractEvents(card)
    if Object.IsValid(card.spawnedCard) then
        card.spawnedCard:Destroy()
    end
end

function ReleasedEvent(_, action, value)
    if action == 'Click' then
        releaseEvent:Trigger(value)

        if not isDragging then
            Click()
        end
        dragging = nil
        isDragging = false
        touchLocation = nil
        if deltaCursorTask then
            deltaCursorTask:Cancel()
            deltaCursorTask = nil
        end
    end
end

function PressedEvent(_, action, value)
    if action == 'Click' then
        pressedEvent:Trigger(value)
        touchLocation = Input.GetCursorPosition()
        deltaCursorTask =
            Task.Spawn(
            function()
                while not isDragging do
                    currentLocation = Input.GetCursorPosition()
                    if (touchLocation - currentLocation).sizeSquared > DragDistanceSqr then
                        Drag()
                    end
                    Task.Wait()
                end
            end
        )
    end
end

function InputDown(card)
    if card.isInteractable and card._isInteractable and card:IsHoveringOver() then
        card.interactEvents = {
            dragEvent:Connect(
                function()
                    card:Drag()
                end
            ),
            clickEvent:Connect(
                function()
                    card:Click()
                end
            )
        }
    end
end

function InputUp(card)
    if card.dragged then
        card:Drop()
        card.dragged = false
    end

    Task.Spawn(
        function()
            ClearInteractTasks(card)
            ClearInteractEvents(card)
        end
    )
end

function NewCard(card, database)
    card._isInteractable = true
    card.position = Vector2.New(0)
    card.hoveredEvent = luaEvents.New()
    card.unhoveredEvent = luaEvents.New()
    card.draggedEvent = luaEvents.New()
    card.dropEvent = luaEvents.New()
    card.clickedEvent = luaEvents.New()
    card.destroyEvent:Connect(Destroyed)

    local inputDown =
        pressedEvent:Connect(
        function()
            InputDown(card)
        end
    )
    local inputUp =
        releaseEvent:Connect(
        function()
            InputUp(card)
        end
    )

    if HoverEnabled then
        card.updateEvent:Connect(
            function(self)
                self:HoverCheck()
            end
        )
    end
    table.insert(card.listeners, inputDown)
    table.insert(card.listeners, inputUp)
end

Input.actionPressedEvent:Connect(PressedEvent)
Input.actionReleasedEvent:Connect(ReleasedEvent)

database.cloneCardEvent:Connect(NewCard)
database:FinishedAddingComponent(componentName)
