# Setup Unity and CCK

The Content Creation Kit (CCK) is how you create and upload content to ChilloutVR.
There are two versions available. If you're not sure which to pick, check the
comparison below.

## Which version should I use?

<div class="grid cards" markdown>

-   :material-shield-check:{ .lg .middle } __CCK 3 (Stable)__

    ---

    The long-standing stable release with localization in English,
    Chinese, Dutch, French, German, Japanese, Korean, and Russian.
    Uses **Unity {{ cck.cck3.unity.install.version }}**.

    Development on CCK 3 is finished. Pick this if you want something
    proven and don't need the latest features.

    [:octicons-arrow-right-24: Download CCK 3](#cck-3-stable)

-   :material-flask:{ .lg .middle } __CCK 4 (Preview)__

    ---

    A rewrite with a modern build panel, content browser, account
    switcher, and reworked build pipeline. No more play mode
    to upload. Uses **Unity {{ cck.cck4.unity.install.version }}**.

    Still in preview and missing some translations, but all future
    development is happening here.

    [:octicons-arrow-right-24: Download CCK 4](#cck-4-preview)

</div>

!!! info "Can I use both?"
    You cannot import both CCK 3 and CCK 4 into the same project as they will conflict. CCK 4 includes all functionality of CCK 3.

## Downloads

=== "CCK 3 (Stable)"

    ##### Download CCK 3

    [ :fontawesome-solid-download: Download Content Creation Kit {{ cck.cck3.version }}]({{ cck.cck3.downloadUrl }}){ .md-button .md-button--primary }

    ##### Download Unity for CCK 3

    You also need one of our supported unity versions, we recommend to use **Unity {{ cck.cck3.unity.install.version }}**

    [ :fontawesome-solid-download: Unity {{ cck.cck3.unity.install.version }} (Unity Hub)]({{ cck.cck3.unity.install.hub }}){ .md-button .md-button--primary }
    [ :fontawesome-solid-download: Unity {{ cck.cck3.unity.install.version }} (Win-Executable)]({{ cck.cck3.unity.install.executable }}){ .md-button }

=== "CCK 4 (Preview)"

    !!! warning "Preview Release"
        CCK 4 is still in active development. Back up your project before importing, and report any issues to the
        [CCK 4 Megathread](https://github.com/ChilloutVR-Team/ChilloutVR-Issues/issues/1833) on our issue tracker.

    ##### Download CCK 4

    [ :fontawesome-solid-download: Download Content Creation Kit {{ cck.cck4.version }}]({{ cck.cck4.downloadUrl }}){ .md-button .md-button--primary }

    ##### Download Unity for CCK 4

    CCK 4 requires a newer version of Unity. We recommend **Unity {{ cck.cck4.unity.install.version }}**

    [ :fontawesome-solid-download: Unity {{ cck.cck4.unity.install.version }} (Unity Hub)]({{ cck.cck4.unity.install.hub }}){ .md-button .md-button--primary }
    [ :fontawesome-solid-download: Unity {{ cck.cck4.unity.install.version }} (Win-Executable)]({{ cck.cck4.unity.install.executable }}){ .md-button }

## Installation

=== "CCK 3 (Stable)"

    ##### Removing old installations

    Before importing the new version, please remove the following folders in the main directory of your Unity project if
    present: `ABI.CCK` and `ABI.MODS`. A restart of the editor is not required. This procedure can be optional but is
    recommended for line version upgrades (1.X to 2.X, 2.X to 3.X, etc.)

    ##### Importing new CCK

    If no old CCK is present, you can just import the package found above. If you already have an older version of our CCK
    imported, please refer to the information of the step above.

=== "CCK 4 (Preview)"

    !!! danger "Clean import required, every time"
        CCK 4 requires a clean import every time you update, including between preview releases. Things are constantly
        changing and leftover files will cause issues.

    ##### Before importing

    1. **Back up your project.** A lot has been touched and not every setup can be tested. Don't skip this on projects you care about.
    2. **Delete all existing CCK folders** from your `Assets/` directory:
        - `ABI.CCK`
        - `ABI.MODS`
        - `ABI.QA`
        - `CVR.CCK`

    ##### Importing new CCK

    Once the old folders are removed, import the CCK 4 package downloaded above.

##### Signing in to the CCK

To sign in to the CCK, you will need your Content Creation Kit Master Key. **This is not the same as your ChilloutVR account password.**
You can find your master key through the [Community Hub](https://hub.chilloutvr.net/) in your profile settings under **Access Key Management**.
You will then sign in with that key and your username.

## Publishing Content

To publish any content, log in to the [Community Hub](https://hub.chilloutvr.net/) and open your content's details page. 
From there, click **Submit for Publication** and follow the on-screen instructions.

You can quickly open the details page in several ways:

* **From the Community Hub:** click the **My Content** button up top, find your created content, and click **Manage**.
* **From the CCK Builder Tab:** click the `▼` utility button in the top-right and select **Open in Browser**.
* **From the CCK Browser Tab (CCK 4.X.X+):** search for your created content and click the **View on Hub** button.
* **In-game:** use the **Open in Hub** button on the content's in-game details page.

<hr>
**Any questions left?**  
See our [FAQ](faq.md), check out our [Discord](https://discord.gg/ChilloutVR), take a look at our 
[Feedback Platform](https://github.com/ChilloutVR-Team/ChilloutVR/issues) or mention us on Twitter [@ChilloutVR](https://twitter.com/ChilloutVR).