local WAVELENGTH = script:GetCustomProperty("Wavelength")
local MIN_AMPLITUDE = script:GetCustomProperty("MinAmplitude")
local MAX_AMPLITUDE = script:GetCustomProperty("MaxAmplitude")
local START_TIME = script:GetCustomProperty("StartTime")
local IS_LOCAL = script:GetCustomProperty("IsLocal")

if MIN_AMPLITUDE == 0 then
  MIN_AMPLITUDE = 0.001
end

local ramplitudeKeys = {
  CurveKey.New(0, 1, {interpolation = CurveInterpolation.CUBIC}),
  CurveKey.New(WAVELENGTH * math.pi, MAX_AMPLITUDE / MIN_AMPLITUDE, {interpolation = CurveInterpolation.CUBIC})
}

local curveKeys = {
  CurveKey.New(0, -1, {interpolation = CurveInterpolation.CUBIC}),
  CurveKey.New(WAVELENGTH, 1, {interpolation = CurveInterpolation.CUBIC})
}

local curveSettings = {
  preExtrapolation = CurveExtrapolation.OSCILLATE,
  postExtrapolation = CurveExtrapolation.OSCILLATE
}

local curve = SimpleCurve.New(curveKeys, curveSettings)
local ramplitude = SimpleCurve.New(ramplitudeKeys, curveSettings)
local startRotation = nil

if IS_LOCAL then
  startRotation = script.parent:GetRotation()
else
  startRotation = script.parent:GetWorldRotation()
end


function swingLoop(dt)
  if not Object.IsValid(script.parent) then return end
  local curveValue = Rotation.New(curve:GetValue(time() + START_TIME) * ramplitude:GetValue(time() + START_TIME), 0, 0)

  if IS_LOCAL then
    script.parent:SetRotation(startRotation + curveValue * MIN_AMPLITUDE)
  else
    script.parent:SetWorldRotation(startRotation + curveValue * MIN_AMPLITUDE)
  end

  swingLoop(Task.Wait())
end

swingLoop(Task.Wait())

-- you know, i don't think this is actually all that simple in hindsight
