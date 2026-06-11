# Available Scripting Defines

This page lists all available scripting defines that can be used to conditionally compile code based on the context in which the script is running.

## Available Defines

| Define                       | Description                        |
|------------------------------|------------------------------------|
| CVR_SCRIPTING_CONTEXT_AVATAR | Script is compiling for an Avatar. |
| CVR_SCRIPTING_CONTEXT_PROP   | Script is compiling for a Prop.    |
| CVR_SCRIPTING_CONTEXT_WORLD  | Script is compiling for a World.   |
| CVR_SCRIPTING_ENVIRONMENT    | Script is compiling for WASM.      |

You can also easily define your own by adding them to the `Scripting Define Symbols` in the [CCK Wasm Project Descriptor](../components/cck-wasm-project-descriptor.md).

## Examples

=== "Log Context in Start()"
    ```csharp
    public partial class ContextLogger : WasmBehaviour
    {
        void Start()
        {
    #if CVR_SCRIPTING_CONTEXT_AVATAR
            Debug.Log("Context: Avatar");
    #elif CVR_SCRIPTING_CONTEXT_PROP
            Debug.Log("Context: Prop");
    #elif CVR_SCRIPTING_CONTEXT_WORLD
            Debug.Log("Context: World");
    #else
            Debug.Log("Context: Unknown");
    #endif
        }
    }
    ```

=== "WASM vs Native Codepath"
    ```csharp
    public partial class EnvironmentSplit : WasmBehaviour
    {
        void Start()
        {
    #if CVR_SCRIPTING_ENVIRONMENT
            Debug.Log("Running inside WASM");
            // Do something specific to WASM
    #else
            Debug.Log("Running natively (Editor/Player)");
            // Do something specific to Unity Editor or Player
    
    #if UNITY_EDITOR
            Debug.Log("This is the Unity Editor");
            // Editor-specific code here
    #endif
    
    #endif
        }
    }
    ```