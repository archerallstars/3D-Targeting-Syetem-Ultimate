# 3D-Targeting-Syetem-Ultimate
The 3D targeting system for Godot game engine.

This tool is based on and included all the features from the "3D Targeting System 1.0.0" by JohnnyRouddro. It has been ported from GDScript to Visual Script. Some features have been added to the original system as follows:

1. Added 2 area detection modes including **Area Random** and **Area Closest** to pick a target as the name suggested.
2. Added the ability to pick a target manually (you can use your logic for targeting, the demo included) in **Manual** pick mode.
3. Added the ability to change targeting speed right from the inspector tab.
4. All the system's options are exposed to the inspector tab, ready to be implemented in any project without having to modify any code.

# Usage
1. Open the demo project in Godot game engine. There are 3 scripts: **player.vs**, **Look.vs**, and **Camera.vs**. Each of them can be used independently.
- **player.vs**
  - is intended for demonstration purposes. You don't actually need this in your project.
- **Look.vs**
  - is the main logic for targeting.
- **Camera.vs**
  - is also intended for demonstration purposes. However, you can make use of it in any way you like. It's a basic camera's movement by mouse input like you see in a lot of FPS shooter games.

2. After getting familiar with the demo project, attach the script to your node in your project, then set all the options in the inspector tab. The options in each script are as follows:
- **player.vs**: 
  - **Demo Mode**: this will turn on or off the input for player control in the demo, allowing you to implement your player control.
  - **Camera Lock Keys**: you can specify as many keys as you want here. It will allow you to lock the camera to the target (disable mouse input).
  - **Camera Status Text**: message to show when the camera locked to the target.
  - **Toggle Camera Status**: disable it if you don't need to show your camera status.
  - **Toggle Camera Script**: disable it if you don't need to control the camera targeting script.
- **Look.vs**:
  - **Mode**: there are 5 targeting modes like the original system.
  - **Mode Keys**: you can set the keys to toggle between modes.
  - **Mode Display**: disable it if you don't want to show a message telling which mode you're in.
  - **Action Status**: disable it if you don't want to show the target locked status at the center of your screen. It's mainly for demonstration purposes.
  - **Pick Mode**: _Random_ = randomly choose a target inside a specified target group (like the original system). _Area Random_ = randomly choose a target inside the detection area. _Area Closest_ = choose the target closest to the player inside the detection area. _Manual_ = targeting based on your logic. See comments in the code for more detail.
  - **Targeting Area Random**: this will delay the logic for the Area Random pick mode. If it's set to 1, whichever target entered the detection area first will be picked as a target, hence not really random. The default is set to 3, so at least it will randomly choose between 3 entered targets.
  - **Entered Target Group**: specify the node's group you consider to be a target.
  - **Auto Retargeting**: only relevant in the area pick modes. With this option turned on, as soon as there's a new target entered the detection area, it will automatically recalculate and pick a new target according to the selected pick mode.
  - **Targeting Area Distance**: specified your targeting area scale.
  - **Mesh Structure**: since there are ways to arrange a mesh and its collision, some people make a mesh as a parent node, some make it a child. Therefore, please choose this option accordingly. It's important in the area's pick modes since the engine will only detect body_entered with the collision nodes.
  - **Target Manual Demo**: this is for demonstration purposes where you can press Z, X, C, V, B, N, M, G, H, J, K, L to choose between 12 targets in the scene manually. You can disable it in your project.
  - **Target Material** and **Change Target Material**: are for demonstration purposes. It's a good thing to have when debugging since you can easily see which target you are targeting.
  - **Targeting Speed**: 100 means 100%, 200 means 200% or 2 times, and so on.
- **Camera.vs**
  - **Mouse Mode**: as the name suggested.
  - **Toggle Mouse Input**: you can turn this off or you don't need to attach this script.

Please note that due to godotengine/godot issue #44152, it's currently impossible to categorize or group the script options. Therefore, the script options will appear randomly in order.

3. Don't forget to add required node as the name suggested in the inspector tab.

All feedbacks are welcome.
