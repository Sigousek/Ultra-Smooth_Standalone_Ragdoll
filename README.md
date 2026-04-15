## ✨ Features

* **🚀 Extreme Optimization:** Runs at **0.00ms** on Resmon when idle.
* **🛠 No "Jump" Glitch:** Fixed the common issue where peds twitch or jump before falling.
* **🎮 Key Mapping Support:** Uses FiveM's native `RegisterKeyMapping`. Players can rebind the key (**default "U"**) in their own game settings (`Settings -> Key Bindings -> FiveM`).
* **⚡ Framework Independent:** Works as a standalone script but is fully compatible with **QB-Core** and **ESX**.
* **🔌 Taser Integration:** Optional config to force ragdoll state when a player is tased.
* **💀 Death Check:** Automatically disables ragdoll state if the player dies to prevent animation loops.

## 📥 Installation

1. **Download:** Clone this repository or download the file.
2. **Directory:** Place the `rag` folder into your FiveM server's `resources` directory.
3. **Configuration:** (Optional) Open `client.lua` and adjust the settings "Config.stunShouldRagdoll" (explained in the code) to your liking.
4. **Server Config:** Add the following line to your `server.cfg`:
   ensure rag


  [!TIP]
  You can change the default keybind in your game settings:
  ESC -> Settings -> Key Bindings -> FiveM -> Toggle Player Ragdoll
