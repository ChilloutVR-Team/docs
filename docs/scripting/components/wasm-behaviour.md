# Wasm Behaviour

This is the base class for all scripts written for ChilloutVR using our C# scripting implementation.

Alone, it does nothing. Mostly, it serves as a marker to identify which Mono Behaviours should be compiled into your WASM module at build time.

At build time, all Wasm Behaviours are replaced with a `RuntimeWasmBehaviour`, which stores all serialized data and behaviour metadata for use at runtime.

Think of this `RuntimeWasmBehaviour` as your tap into Unity to access GameObjects, Components, and other Unity events from within your WASM program.