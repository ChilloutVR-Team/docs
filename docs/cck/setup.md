# Setup Unity and CCK

The Content Creation Kit (CCK) is how you create and upload content to ChilloutVR.
There are two versions available. If you're not sure which to pick, check the
comparison below.

## Which version should I use?

<div class="grid cards" markdown>

-   :material-shield-check:{ .lg .middle } __CCK 4 (Release)__

    ---

    A rewrite with a modern build panel, content browser, account
    switcher, and reworked build pipeline. No more play mode
    to upload. Uses **Unity {{ cck.cck4.unity.install.version }}**.

    Missing some translations, but all future
    development is happening here.

    [:octicons-download-16: Download CCK 4](#cck-4-Stable)

    [:octicons-book-16: Full Changelog](../changelogs/preview-4.0.0/)

-   :material-flask:{ .lg .middle } __CCK 3 (Legacy)__

    ---

    The long-standing stable release with localization in English,
    Chinese, Dutch, French, German, Japanese, Korean, and Russian.
    Uses **Unity {{ cck.cck3.unity.install.version }}**.

    Development on CCK 3 will not be continued. We recommend to use CCK 4 for active development since CCK 3 will be deprecated in the future.

    [:octicons-download-16: Download CCK 3](#cck-3-Legacy)

    [:octicons-book-16: Latest Changelog](../changelogs/release-3.16.4/)

</div>

!!! info "Can I use both?"
    You cannot import both CCK 3 and CCK 4 into the same project as they will conflict. CCK 4 includes all functionality of CCK 3.

## Downloads

=== "CCK 4 (Stable)"

    ##### Download CCK 4

    [ :fontawesome-solid-download: Download Content Creation Kit {{ cck.cck4.version }}]({{ cck.cck4.downloadUrl }}){ .md-button .md-button--primary }

    ##### Download Unity for CCK 4

    CCK 4 requires a newer version of Unity. We recommend **Unity {{ cck.cck4.unity.install.version }}**

    [ :fontawesome-solid-download: Unity {{ cck.cck4.unity.install.version }} (Unity Hub)]({{ cck.cck4.unity.install.hub }}){ .md-button .md-button--primary }
    [ :fontawesome-solid-download: Unity {{ cck.cck4.unity.install.version }} (Win-Executable)]({{ cck.cck4.unity.install.executable }}){ .md-button }

    !!! info "Reguarding the Unity Security Update Advisory"
        **Unity {{ cck.cck4.unity.install.version }}** will be flagged by Unity Hub as vulnerable due to a recent Unity Security Update Advisory.
        This issue does not affect the Unity Editor and is specific to player builds only, so __it is safe to use this version__ for creating content in ChilloutVR.

=== "CCK 3 (Legacy)"

    ##### Download CCK 3

    [ :fontawesome-solid-download: Download Content Creation Kit {{ cck.cck3.version }}]({{ cck.cck3.downloadUrl }}){ .md-button .md-button--primary }

    ##### Download Unity for CCK 3

    You also need one of our supported unity versions, we recommend to use **Unity {{ cck.cck3.unity.install.version }}**

    [ :fontawesome-solid-download: Unity {{ cck.cck3.unity.install.version }} (Unity Hub)]({{ cck.cck3.unity.install.hub }}){ .md-button .md-button--primary }
    [ :fontawesome-solid-download: Unity {{ cck.cck3.unity.install.version }} (Win-Executable)]({{ cck.cck3.unity.install.executable }}){ .md-button }

## Installation

=== "CCK 4 (Stable)"

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

=== "CCK 3 (Legacy)"

    ##### Removing old installations

    Before importing the new version, please remove the following folders in the main directory of your Unity project if
    present: `ABI.CCK` and `ABI.MODS`. A restart of the editor is not required. This procedure can be optional but is
    recommended for line version upgrades (1.X to 2.X, 2.X to 3.X, etc.)

    ##### Importing new CCK

    If no old CCK is present, you can just import the package found above. If you already have an older version of our CCK
    imported, please refer to the information of the step above.

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