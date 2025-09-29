# Content Tags

The following contains an overview of the content classification tags provided by the CCK. You are required to tag your
uploaded content accordingly. If you are unsure about a certain tag's meaning you can contact us at any time via email.

!!! tip
    **If in doubt: _tag it_.** It's better to be overly cautious than miss an important tag!

## Disrupting Experience

Tags for effects that change or interrupt normal gameplay, such as screen overlays, flashing visuals, or sudden scares.

### Screen Effects

Content that includes any visual effect that alters, distorts, or overlays the player’s screen.

Including but not limited to:

- Fullscreen or screen-space shader effects (blur, distortion, chromatic aberration, static, noise)
- Screen overlays that attach to the HUD
- Screen-space animations (pulsing, flashing, color shifts)

### Flashing Effects

When the content contains rapidly flashing/changing elements which may cause
discomfort or photosensitivity.

Including but not limited to flashing/rapidly changing:

- Lights
- Materials
- Textures
- Colors

!!! tip
    The most important reason for this tag's existence is due to health conditions players might have. Make sure to
    use those tags whenever something is rapidly changing or flashing.

### Jumpscare

Content containing sudden visual or audio event designed to startle the user.

A jumpscare is a technique often used in horror films and video games, intended to scare the audience by surprising
them with an abrupt change in image or event, usually co-occurring with a loud, frightening sound.

## Mature Themes

Tags for content with adult or sensitive themes, including suggestive material, violence, or horror elements.

### Suggestive

Content that implies sexual themes without necessary explicit material.

Refer to our [Suggestive Content guidelines](../official/legal/content_guidelines.md#suggestive) for in-depth
information.

### Violence

Content that features non-graphic depictions of harm, non-graphic injuries, or destruction including weapons or damage.

Including but not limited to:

- Non-graphic Injuries
- Damaging or Destroying an object/character
- Usage of firearms

!!! warning "Graphic Violence"
    If your content depicts injuries and/or violence with graphic detail, you should also apply the [Gore](#gore) tag too!

### Horror

Content designed to scare using spooky visuals, sounds, or horror tropes.

Including but not limited to:

- Scary visual effect
- Scary sound effects

## Content Gating

Tags for explicit or graphic content, only visible with the
free [Mature Content Access DLC](../chilloutvr/faq/mature-content-access-dlc.md).

### Gore

Includes graphic content such as blood, wounds, or detailed injury visuals.

Including but not limited to:

- Blood from a wound or cut
- Excessive violence
- Excessive detailing on injuries

!!! warning "Tag Locked"
    This tag is locked behind the [Mature Content Access DLC](../chilloutvr/faq/mature-content-access-dlc.md) which is
    free on steam.

### Explicit

Content showing sexual acts, full nudity with intimate areas visible, or material designed for sexual arousal.

Refer to our [Explicit Content guidelines](../official/legal/content_guidelines.md#explicit) for in-depth
information.

!!! tip
    When tagging your content as Explicit, you should also mark as [Suggestive](#suggestive).

!!! warning "Tag Locked"
    This tag is locked behind the [Mature Content Access DLC](../chilloutvr/faq/mature-content-access-dlc.md) which is
    free on steam.

## Automatically Tagged

Some tags will automatically be applied, so the user doesn't need to worry about them.

- **Loud Audio** - Contains an [audioclip](https://docs.unity3d.com/Manual/class-AudioClip.html){:target="_blank"} is
  above `-8db`
- **Long Range Audio** - Contains 
  an [audiosource](https://docs.unity3d.com/Manual/class-AudioSource.html){:target="_blank"} that is `2D` or above `15m`
  distance

## Deprecated Tags

Some tags were deprecated/merged due the irrelevance, lack of implementation, or being replaced.

- **Nudity** - Was replaced with [Explicit](#explicit)
- **Extremely Bright** - Was merged into [Flashing Effects](#flashing-effects)
- **Flashing Colors** - Was merged into [Flashing Effects](#flashing-effects)
- **Flashing Lights** - Was merged into [Flashing Effects](#flashing-effects)
- **Extremely Huge** - Too subjective, will be added as a Removable on the game client
- **Extremely Small** - Too subjective, will be added as a Removable on the game client
- **Particle Systems** - Already exists as a Removable on the game client
- **Spawn Audio** - Was not implemented
- **Contains Music** - Was not implemented
