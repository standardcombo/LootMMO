local ball = script.parent
local tries = 0

function Tick()
  if tries >= 10 then
    print("Tilt - Ball got stuck.")
    Events.Broadcast("SpawnBall", ball.clientUserData["Machine"])
    Events.Broadcast("KillBall", ball.clientUserData["Machine"], ball.id)
    return
  end

  if ball:GetVelocity().size < 0.3 then
    if tries > 1 then ball:SetVelocity(Vector3.New(10, math.random(-25, 25), 3)) end
    tries = tries + 2
  else
    tries = math.max(tries - 1, 0)
  end

  Task.Wait(0.1)
end
