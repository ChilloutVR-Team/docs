# CVR Audio Driver <div class="whitelisted" data-list="AP"></div>
This component allows you, to switch between multiple audio clips for one audio source.  
This is recommended and useful when using many audio clips for the same audio source location and settings.

### Properties

##### Audio Source
Select the [Audio Source](https://docs.unity3d.com/ScriptReference/AudioSource.html) the clips should be played on.

##### Audio Clips
A list of [Audio Clip's](https://docs.unity3d.com/ScriptReference/AudioClip.html) that you want to switch between.

##### Selected Audio Clip
The index of the audio clip that is currently selected. This can be changed during runtime by e.g., an animation.

##### Play On Switch
If this is enabled, the audio clip will play when switching the selected audio clip.