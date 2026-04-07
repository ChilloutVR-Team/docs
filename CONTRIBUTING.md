# Contributing to CCK Docs

## Notification Boxes
For inserting notification fields, always keep in mind that they stand out from the body of text and will typically be read first. as a result, they should be **before** a section unless they refer to something between two paragraphs.
All info fields can be titled with the following formatting:

```
!!! NotifType "Field Title"
    Follow this for an info box with a title rather than it's type
```

Use notifications to reiterate points about a singular topic that can be addressed directly. Additionally, try to keep the titles of titled notifications 6 words or less.

Additionally, you can add a notification at the end of a statement with the following:
```
!!! NotifType inline end
	Follow this for an info box that is inlined on the right-hand side of the text above it.
```

When creating a Notification, keep the following rule of thumb in mind:
"A note can go anywhere."
"Info goes somewhere specific."
"Not following a tip won't break anything."
"Not following a hint *might* break something"
"Not following a warning *WILL* break something"
### Note

```
!!! note
    follow this for a note box
```

Notes are the lowest importance message box in most cases. Anything that could go in the notes section in the CCK docs is eligible for one of these boxes, however it is suggested to only make these when the information is relevant to the section. These are mostly things that a creator should be aware of when working with a component that is generalized enough that it may not necessarily refer to any specific part of the relevant component, or that component at all (for example, something that must be done in blender for the component to behave as expected)

### Info

```
!!! info
    follow this for a info box
```

Use info when describing a feature, behavior, or concept specific to that component, article, or component/article subsection. This should be information the user should know about but doesn't necessarily affect outcomes.
### Tip

```
!!! tip
    follow this for a tip box
```

Use a tip when describing something about a component or subsection that may not always be the intended use, but is important for one of the most common use-cases. 
This should always be for something the user has direct control over. Not following a tip should never result in unsupported behavior.
### Hint
```
!!! hint
    follow this for a hint box
```

Use hints when describing something that may not fit elsewhere in the documentation or when addressing a single topic that may easily lead to errors or unsupported behavior.
### Warning

```
!!! warning
    Use this format for a warning, which has bolded letters and a different color
```

Use warnings when misuse of a component, field, etc. will directly lead to either an error or broken functionality. Good examples of this are adding multiple full blinks to the blink blendshapes or using animations with the viseme blendshapes in the avatar component.
## Embeds

### Images

For images in directories *ABOVE* the current folder (IE: in the assets folder), you need to use a relative link with the following format:
```
![](../../Folder/with/the/image.png)
```

a functional example is in the asset info doc as :
```
![](../../assets/images/compdoc/Asset Info Detatched.png)
```

For images in the same directory or lower, you can link to it directly as:
```
![](image.png)
or
![](subfolder/image.png)
```
however, avoid leaving assets in the same directory or a subdirectory as this will make them navigable in the left-hand sidebar.

### Videos

needs to be in HTML, will update this when relevant

## Linking

You can replace any link in markdown with custom text (also known as aliasing) with the following: ``[address.com](replaced text)``

For linking so a section within an article, use:
``[Section Name](Article.md#section-name-in-lowercase)``
# Style Guidelines

## General Rules

All articles should be written with American English with exceptions where they exist in Unity or the CVR CCK itself.

The general layout of a CCK documentation page should be as follows:
```
# Title
overview, with links to related components
## UI
include at least one image of the UI when first placed in a GameObject. try to make seperate images of subsections, or context-specific versions of the component UI
## Examples
images or videos
## Notes/Special Information
```

- The first sentence should always refer directly to the component by name. (EG: "The CVR Translatable component does blah blah blah")
- in the abstract, describe what the component enables, not what happens in game.
- Follow Wikipedia's "first link" rule. When a linkable item appears in a document, only link the first instance not in an info box. this does not apply to link lists (EG: "see also" lists)

MKDocs does not support space-indenting or asterisk (\*) bullet points. When making indented lists, *ALWAYS* use tab-indents, and preferably with hyphen (-) or numerical bullets. Dropdown lists (+) are also supported, but are not currently used in officially submitted content. 

### Title HTML

Add  ```<div class="whitelisted" data-list="AWP"></div>``` after the name of the component in the header. Remove the "A" (avatars) "W" (worlds) and "P" (props) as needed to match the whitelisting. This will display the appropriate compatibility icons in the header.

## Addressing the User

Always refer to the user as "players" or "player", we are making a game. If direct addressing is required, use "you" or "your". Otherwise, use generally semi-formal writing styles. Try to be succinct and clear without being cold, but avoid exclamatory statements, cheekiness, or "twittery", "just-like-you" language using memes or emojis. 
## Addressing the Game

Use the proper full name "ChilloutVR" when addressing the game. The abbreviation "CVR" is also acceptable under certain circumstances such as unavoidable repetition, or referencing things that exist in-game or within the CCK already using it.

### Addressing ChilloutVR Team

When addressing the ChilloutVR Team, please use first-person plural pronouns, such as "we", "our", and "us".

## Embed Rules

This section is incomplete and will be added to over time.

*You may not:*
 
	- Add files or assets for use directly within Unity
