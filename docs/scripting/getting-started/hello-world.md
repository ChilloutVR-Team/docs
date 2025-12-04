# Hello World

A tradition in the programming community is to introduce a new language by having you write a simple program that just spits out "Hello, world!"

We will walk you through this process with CVR's C# scripting and explain what each part means. Don’t worry, while it looks long and boring, it's relatively painless. Experienced programmers can skim through this and not miss much, but new programmers may wish to read the whole thing in its entirety to understand concepts and terminology.

## The Script

Firstly, we need to create the component that actually hosts and runs the script.

1. Create a new folder in your project called Scripts. This isn't required, but may help you organize things.
2. Create a new folder inside it called Hello World.
3. Right-click the folder and select **Create > CVR Wasm Behaviour (C#)**.
4. Name it `HelloWorld` before pressing Enter.

## Attaching the Component

Now that we have the script, let's attach it to a GameObject.

1. In Unity Editor, create a new cube in the scene: *GameObject* > *3D Object* > *Cube*
2. Click on the cube to select it.
3. Find the `HelloWorld` script you just created in the Project window.

    1. At the bottom of the Inspector tab, press *Add Component*.
    2. Search for `HelloWorld` and add it to the cube.

## Programming

Open the `HelloWorld` script in your preferred code editor.

You should now have a file that looks like this:

```csharp
using UnityEngine;
using WasmScripting;

public partial class HelloWorld : WasmBehaviour
{
    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }
}
```

Here, we see two features of C#: Methods, and comments.

You may notice the additional `using WasmScripting;`, inheriting from `WasmBehaviour`, and the `partial` keyword. 
These are all necessary for our Scripting implementation, but aren't important to understand for this simple example.

### What am I Looking At?

*Methods* are sections of code that can be referenced and executed by other code by name. Each method must start with a *return type* (`void` here), then an *identifier* that must follow some naming rules (no whitespace, can't start with a number), and is followed by zero or more *parameters* inside of two parentheses. After these, the method contains zero or more *statements*. Finally, the end of the block is marked by a closing brace.

Methods can take different kinds of *parameters* of many different types, like *numbers*, sequences of characters (called *strings*), user-defined types, or others. After processing the parameters, a method may *return* a value. In the script above, you see two method *definitions*: `Start()`, and `Update()`.

You'll also notice double slashes (`//`) followed by a remark. These are called *comments* and are ignored by the compiler. Their purpose is to allow programmers to leave notes in their code. They are not required and can be placed almost anywhere.

When the script starts, `Start()` is called by Unity. Thereafter, as long as the script is active, it will receive `Update()` calls from Unity multiple times per second.

### Completing the Objective

We want to output "Hello, world!" to console. So, let's do that.

1. In Start(), type in `Debug.Log` followed by parenthesis
2. Type in `"Hello, world!"` inside the parentheses, so it looks like this: `Debug.Log("Hello, world!");`

And you're done.

Here is the full result:

```csharp hl_lines="9"
using UnityEngine;
using WasmScripting;

public partial class HelloWorld : WasmBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        Debug.Log("Hello, world!");
    }

    // Update is called once per frame
    void Update()
    {

    }
}
```

This adds a method call: `Debug.Log()`, which takes a single string. It prints the text to your logs and console.

If a custom logging method were written in C#, it could look like this:

```csharp
public static void WriteLine(string text)
{
    // Send the text to whatever output we want
}
```

Each argument is positional, so the first argument in the call becomes the first parameter in the method. Calling `WriteLine("Hello, world!")` assigns `"Hello, world!"` to the `text` parameter.

## Uploading

Now, go through the usual process of adding a CVRSpawnable to the prop and uploading it to the game.

When you spawn it in-game, it should print to your game logs.

Congratulations! You've made your first script.
