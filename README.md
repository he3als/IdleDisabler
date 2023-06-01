# Idle Disabler
A simple Windows batch script to disable processor idle states. [Click here](https://github.com/he3als/IdleDisabler/releases) to go to the latest download/release. 

![image](https://user-images.githubusercontent.com/65787561/158037426-a82087c7-40ff-4d12-98c9-2fa8b9cacc2a.png)

## Notes
- **Do not close the batch script using the red X, use the built in exit instead to prevent you from accidently leaving idle disabled**
- On desktops, do not disable idle with hyper-threading enabled, your performance will be significantly worse
 - On laptops, it might be beneficial regardless due to laptops typically being in a high C-state without idle disabled, but you should test
- If you have good cooling and do not mind the slightly extra power & potential fan noise, you might want to consider disabling idle constantly
- Disabling idle will most likely increase CPU temperature (especially on laptops) and fan speed
- If you do not have good cooling, you **should not** have idle disabled constantly (especially for laptops)

## Features
- Automatically minimising (togglable)
- Quite fast
- Easy to use & easy to configure (configuration is done by editing the batch script)

## Download
1. Open [this link](https://raw.githubusercontent.com/he3als/IdleDisabler/main/DisableIdle.cmd) in a new tab
2. Right click and click 'Save As' and save it as a `.bat` file

**Note: Your browser may save it as a `.txt` and if that is the case, then just rename it to `.bat`.**

**If you can not download it directly, [download the .zip](https://github.com/he3als/IdleDisabler/archive/refs/heads/main.zip) and extract it.**

## Showcase

https://user-images.githubusercontent.com/65787561/158037430-6006a888-f156-48a4-9978-4d7b87b88b67.mp4

## FAQ
1. **Why not just have idle disabled constantly?** You don't need idle disabled for browsing the internet, watching a video, etc... Disabling idle will increase temperatures (dependant on hardware) too, which can cause fans to speed up, causing potentially annoying loudness. This script is made to prevent people from constantly running their CPU at C-State 0, especially for people with bad cooling or on laptops. You only probably only need this script whilst gaming and it is not recommended for laptops, due to laptops having batteries and laptops generally having way higher temperatures than desktop computers.
2. **Who is this for?** This is for people that want to make sure that their CPU is in C-State 0 for optimal latency and performance whilst gaming and not in-between C-State 1 and 0.
3. **What even are C-States?** https://www.dell.com/support/kbdoc/en-uk/000060621/what-is-the-c-state

![image](https://user-images.githubusercontent.com/65787561/160692853-58b9e9d2-c119-4223-97c7-7427d208f7e8.png)

**Note: I am not an expert on this topic and my technical accuracy may not be the best.**
