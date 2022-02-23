# Best Modification of the [Fix-Clean Vehicle Command v1.2.5](https://forum.cfx.re/t/release-fx-fix-clean-vehicle-command/39409) 

## Explaining the reason for the modification
I started by changing this script because I thought it was an interesting idea but it was a little poorly programmed and not developed so I decided to improve, that's why I released this version 😁

## Installation
Just put it in the base and start the script in the **"server.cfg"** file.
```
start TheSilva_FCV
```
**OR**
```
ensure TheSilva_FCV
```

## Usage
If you are in a vehicle you can repair it with the **/fix** command or clean it with the **/clean** command.

## Config
Open the **"config.lua"** file and change what you need!

**everyoneAllowed** - It is false at default.
  - **True** - Everyone is allowed to use the command, you do not need to add anyone to the allowed table
  - **False** - You need to add people to the allowed table to give them permission to use the table

**Notifications** - It is true at default.
  - **True** - All notifications appear for the player
  - **False** - No notification will appear for the player

**StaffGroup** - Put the name of the group you want to have access to the commands. (In the file **"server.cfg"** look for **"add_ace"** and put the second word that is there!)

**AllowedList** - Enter your steam IDs and IPs. DO NOT forget the commas and do not add a comma at the end.

**Translations** - English language by Default (Change if you need!)

## Change Log
### v1.2.5 [Original] (Murfasa)
- Added whitelist for steamIDs and IPs
- Added /clean command
- Refined /fix’s functionality

### v1.0 [Modified]
- Add a config file

### v1.1 [Modified]
- Enable/Disable Notifications
- Functionality to fix and clean the vehicle outside of it
- Translate the notifications in the **"config.lua"** file


# Made with ❤ by [TheSilva#4495](https://github.com/thesilvaofficial)

