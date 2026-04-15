Config = {}
Config.stunShouldRagdoll = true -- If tased or hit with a stun gun, the player will automatically ragdoll. Set to false to disable this feature.

local isRagdoll = false

local function toggleRagdoll()
    local ped = PlayerPedId()
    if not IsPedInAnyVehicle(ped, false) and not IsEntityDead(ped) then
        isRagdoll = not isRagdoll
    end
end

RegisterKeyMapping('rag', 'Toggle Player Ragdoll', 'keyboard', 'U')

RegisterCommand("rag", function()
    toggleRagdoll()
end, false)

CreateThread(function()
    while true do
        local ped = PlayerPedId()
        
        -- Automatic ragdoll when stunned (if enabled in Config)
        if Config.stunShouldRagdoll and IsPedBeingStunned(ped) then
            isRagdoll = true
        end

        if isRagdoll then
            SetPedToRagdoll(ped, 1000, 1000, 0, true, true, false)
            
            if IsEntityDead(ped) then
                isRagdoll = false
            end
            Wait(0) 
        else
            Wait(1000) 
        end
    end
end)
