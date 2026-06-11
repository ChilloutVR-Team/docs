# Overview

Hello World!

This section of our docs is for our C# scripting solution built on Web Assembly (WASM), which is currently in closed testing (invite-only).

A lot of things are still in flux and being worked on, so please bear with us as we continue to work on it! 
Until it's ready for a wider release, our focus will be on testing and feedback from our closed testers, and those on our Scripting branch who can try out creations made by our testers.

<sub>Looking for our docs on our existing Lua scripting implementation? Check out the [Lua Scripting Docs](../../cck/lua/getting-started.md) instead!</sub>

**We plan to eventually replace our Lua scripting solution with this new C# WASM solution**, as it provides a much more powerful and flexible environment for creators to build with.

---

## What is C# WASM Scripting? <sub>(we don't have a better name, yet)</sub>

This is a new scripting solution for ChilloutVR that allows creators to write scripts in C# that run in a sandboxed Web Assembly (WASM) environment on Avatars, Worlds, and Props.
This provides a more powerful and flexible way to create interactive content compared to our previous solutions.

The core of this system is built around our Permissions System, which allows user scripts a ton of capabilities while still keeping everything sane. 
For example, an Avatar script can raycast to, and crawl a World object's hierarchy, but cannot modify the World itself.
Please see [Script Context & Permissions](../context-and-permissions) for more information.

## What can I do?

In place of fully-fledged documentation (coming soon:tm:), here are some highlights of what you can do compared with our previous Lua scripting solution:

- Write scripts in C#, a modern, powerful, and widely-used programming language.
- Use most of the Unity API without jank workarounds to make things work.
- Use a wide range of C# language features, including classes, structs, generics, LINQ, and try/catch.
- Use reflection (within your own VM) to inspect types, methods, and properties at runtime.
- Talk to other scripts within your own VM, even across different GameObjects, without hassle.
- Serialize things like `Vector3`, `Quaternion`, `Color`, `List<T>`, and more, exposed on your `WasmBehaviour` scripts directly in the Unity Editor.
- No need to handle all types by fully-qualified names or `cast` to change types in the background.
- No need to micromanage your scripts performance or initialization time to the extent simple things are not feasible.
- One VM per content instead of one VM per component, allowing for much bigger and more complex projects to be reasonably built.

This implementation should feel much more like writing normal Unity scripts, with some limitations due to the sandboxed nature.
<sub>This isn't build-a-bear for one-off components anymore; we want to give creators the ability to build bigger!</sub>

## Limitations:

As with any sandboxed scripting solution, there are some limitations to what can be done. 
For technical, security, or implementation reasons, some features may not be available or behave differently than in Unity.

- All WasmBehaviours & serializable subclasses must be `partial` classes.
    - This is **required** for our serialization system to work properly.
- Currently, scripts within Prefabs outside the main scene will not be properly built into the final WASM module or usable after instantiation (CCK limitation).
    - Additionally, crawling Prefabs outside a scene will throw permission errors due to our aggressive permissions' system (Game limitation).
    - Please include all objects you will be creating at runtime in the main scene and leave them disabled to work around this limitation for now.
- Using ScriptableObjects are not supported.
- Changing execution order of scripts to run before or after built-in Unity systems or CVR systems is not possible.
    - We provide special events like `PostUpdate` and the ability to sort execution order among your own scripts, but you cannot change when your scripts run relative to Unity or CVR systems.
    - See [Available Events](../apis/available-events.md) for more details.
- Animating fields on a WasmBehaviour via an Animator is not possible.

