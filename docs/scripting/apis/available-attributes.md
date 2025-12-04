# Available Attributes

This page lists some attributes available for scripting.

## Wasm Scripting Attributes
<small>**`WasmScripting`**</small>

| Attribute          | Description                                                                                                                 |
|--------------------|-----------------------------------------------------------------------------------------------------------------------------|
| [WasmSerialized]   | Marks a field to be included by the WASM serializer.                                                                        |
| [NonWasmSerialized] | Marks a field to be ignored by the WASM serializer.                                                                         |
| [ExternallyVisible] | Marks a method as being callable from outside the WASM module. See [UnityEvent Rewiring](unityevent-rewiring.md) for usage. |

## Unity Attributes
<small>**`UnityEngine`**</small>

| Attribute                    | Description                                                                                                                                                        |
|------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [SerializeField]             | Marks a private field to be serialized.                                                                                                                            |
| [DefaultExecutionOrder(int)] | Sets the execution order of a `WasmBehaviour` relative to other `WasmBehaviour`s. Lower values run earlier. See [Available Events](available-events.md) for usage. |

## C# Standard Attributes
<small>**`System`**</small>

| Attribute                      | Description                                                                                 |
|--------------------------------|---------------------------------------------------------------------------------------------|
| [Serializable]                 | Marks a class or struct as serializable.                                |

!!! Tip
    The CCK's WASM serializer will serialize anything Unity's built-in serializer can serialize.
    You can mix and match the above attributes to achieve the desired serialization behavior, for example, serializing something in Unity but not in WASM.

## Unity Editor Attributes
<small>**`UnityEngine`**</small>

The following attributes are not included in your built WASM module by default. 
They can be included in your WASM module by adding `UNITY_EDITOR_ATTRIBUTES` to the `Scripting Define Symbols` in the [CCK Wasm Project Descriptor](../components/cck-wasm-project-descriptor.md) if you ever need to use them at runtime (not recommended).

| Attribute                            | Description                                                   |
|--------------------------------------|---------------------------------------------------------------|
| [HideInInspector]                   | Hides a public field from the Unity Inspector.                |
| [Header(string)]                    | Adds a header above a field in the Unity Inspector.           |
| [PropertyRange(float min, float max)] | Constrains a numeric field to a range in the Unity Inspector. |
| [Space(float height)]               | Adds vertical space above a field in the Unity Inspector.     |
| [Tooltip(string)]                   | Adds a tooltip to a field in the Unity Inspector.             |
| [ColorUsage(bool showAlpha, bool hdr)] | Configures color field options in the Unity Inspector.        |
