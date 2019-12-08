Citizen.CreateThread(function()
    while true do
      local ped = GetPlayerPed(-1)
      local playerped = GetEntityHealth(ped)
      Wait(0)
      if playerped < 130 then
        if IsPedInAnyVehicle(ped, false) then
          TriggerEvent("chatMessage", "^1אתה לא רשאי לנסוע ברכב כאשר אתה פצוע אנא גש לטיפול רפואי")
          TaskLeaveVehicle(ped, GetVehiclePedIsUsing(ped), 16)
        end
    end
end
end)

  