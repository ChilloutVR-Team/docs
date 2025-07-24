# CVR Audio Material Parser<div class="whitelisted" data-list="W"></div>
The purpose of this component is, to make use of spectrum or output data of an audio source.
This could be used to visualize/create reactive objects to e.g. music of the video player.

### Properties

##### Use Separate Audio Sources
If checked, uses the [Audio Source](https://docs.unity3d.com/ScriptReference/AudioSource.html) defined in [Source Audio L](#source-audio-l) and [Source Audio R](#source-audio-r).
Otherwise it uses the [Audio Source](https://docs.unity3d.com/ScriptReference/AudioSource.html) defined in [Source Audio](#source-audio).

##### Source Audio
[Audio Source](https://docs.unity3d.com/ScriptReference/AudioSource.html) used to get the data from.

##### Source Audio L
Left [Audio Source](https://docs.unity3d.com/ScriptReference/AudioSource.html) Channel used to get the data from.

##### Source Audio R
Right [Audio Source](https://docs.unity3d.com/ScriptReference/AudioSource.html) Channel used to get the data from.

##### Audio Data Type
The method used to get data from the audio source(s). Output data format varies between formats.

+ **Output Data** Uses `GetOutputData`
+ **Spectrum Data** Uses `GetSpectrumData`

##### Processing Material
The material used to process the data sent to it. The shader receives the values via the names defined below.

##### Fragment Size
Size of the array sent to the material/shader to process it.

##### Fragment Parameter Name R/L 1-4
The individual names for the variables, parameters, sent to the shader.
Sets the values as a float array.

##### Volume Parameter Name
Contains the current volume of the audio source.
Sets the value as a float.

##### Distance Parameter Name
The distance from the player to the audio source.
Sets the value as a float.

##### Pitch Parameter Name
The pitch value of the audio source.
Sets the value as a float.

##### Doppler Parameter Name
The doppler value of the audio source.
Sets the value as a float.

##### Spatial Parameter Name
The spatial blend of the audio source.
Sets the value as a float.

???+ tip Separate Audio Sources
     When using separate audio sources, the average value of both is calculated.