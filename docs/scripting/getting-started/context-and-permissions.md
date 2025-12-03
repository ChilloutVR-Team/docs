# Script Context

There are three contexts used to determine what your script is capable of. These form the basis of the permissions system and restrict access to certain APIs.

These contexts are based on:

- Content Type
- Owner / Observer
- Object Scope / Ownership

The first two are determined during VM initialization. Scope is resolved on first access to an object and is the most important to understand.

---

## Object Context (`CVRScriptObjectContext`)

Defines **what type of content** the script is running on.

- **Avatar**  
  Script is running on an avatar.
- **Prop**  
  Script is running on a spawnable/prop.
- **World**  
  Script is running on a world scene.
- **None**  
  Content type could not be determined.
- **Any**  
  Avatar | Prop | World.

---

## Owner Context (`CVRScriptOwnerContext`)

Defines **which machines** the script is executing on, based on who owns the content.

- **Self**
    - Avatar → only the wearer
    - Prop → only the spawner
    - World → all machines
- **Other**
    - Avatar → everyone except the wearer
    - Prop → everyone except the spawner
    - World → all machines
- **None**  
  No ownership information available.
- **Any**  
  Self | Other.

---

## Scope Context (`CVRScriptScopeContext`)

Defines the **relationship of an accessed GameObject/component/asset** to the script's content.

- **Self**
    - Avatar → object is inside the avatar the script belongs to
    - Prop → object is inside the prop the script belongs to
    - World → object is inside the world the script belongs to
- **ExternalContent**  
  Object belongs to another avatar/prop/world or internal CVR systems.
- **None**  
  Scope could not be determined (fully restricted).
- **Any**  
  Self | ExternalContent.

---

## Permission Rules of Thumb

- **Getters**  
  Generally available in all contexts.

- **Setters & Instance Methods**  
  Usually restricted to **Self** scope only.

- **Static Methods**  
  Commonly available in all contexts.

- **Method Parameters**  
  Objects passed into a method typically must resolve to **Self** scope.

These rules vary between APIs, but overall:

**Scripts may freely observe their environment, but may not modify anything outside their own content without explicit permission.**

**Note:** Binding-level permission documentation is not yet available. Following the above principles will keep most usage correct.  

TODO: Add detail for specific APIs, like FileStorage, which has user permissions. Add somewhere to document handling exceptions.