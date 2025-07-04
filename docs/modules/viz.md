Insight at a glance
{.tagline}

# ![](../assets/images/modules/viz/viz.svg){.module-logo} Viz

!!! warning "This section is a **work in progress**"

![Screenshot of the Viz module](../assets/images/modules/viz/viz.png){.main-pic}

While not an audio processor in its narrow sense _Viz_ is a versatile tool to probe and visualize signals anywhere in the audio chain. It features an oscilloscope, a spectrum analyzer, a spectrogram and a multichannel correlation meter.

Its smooth high resolution spectral display allows you to easily identify pitches of input signals. The oscilloscope with its unusually large display buffer allows seamless zooming and exploration in the time domain. From a bird's eye view on the evolution of rhythmic patterns down to sample accurate measurements of signals.

Both displays layer visualizations for each discrete channel optionally they can also sum all channels into a single graph.

## Features

- Multichannel oscilloscope, spectrum analyzer, spectrogram and correlation meter
- Zoomable and pannable views
- Smooth and adjustable display of spectrum and oscilloscope
- Large display buffer

## Context

Originally conceived as an internal tool for development and debugging _Viz_ quickly turned out to be a valuable tool in the toolbox of musicians.

The oscilloscope is maybe one of the oldest electronic sound visualization tools and a staple in every classic electronic music studio. The beam of a cathode ray tube is deflected vertically with the amplitude of the sound while it repeatedly scans from left to right on the horizontal axis. Thus the image of a the waveform is temporarily projected onto the screen. _Viz_' oscilloscope has a buffer that holds the last ten seconds of input. The view can be freely zoomed allowing for a graphical display of the entire buffer down to individual samples.

The spectrum analyzer analyzes very short fragments of audio computing the amplitudes of frequencies that make up the analyzed signal. In the digital world this is done using the _Fast Fourier Transform (FFT)_ where the spectrum is split into a discrete set of frequency bins that are analyzed. An FFT of bigger size is more accurate because it analyzes a longer segment of the signal, which allows it to distinguish between frequencies that are very close together. The more data points it uses, the finer the frequency resolution, so you can see smaller differences between pitches in the spectrum. However the bigger the size of an FFT the slower it reacts. So choosing the size of an FFT is a trade of between frequency accuracy and precision in the time domain.

<!-- explain correlation meter -->

!!! note
    Staring into _Viz_ can be like staring into a camp fire.

---

## Controls

_Viz_ is split into four zones that can be freely resized. 

<!-- zooming and panning in views -->

- **Pause:** When toggled on freezes inputs. Views can be explored (zoomed etc.) during pause.
- **Channel Mute:** Clicking toggles channel. Cmd + click solos a channel. Use click + drag to toggle several channels at once.
- **FFT Size:** FFT size of the spectrum analyzer (a tradeoff between time and frequency precision).
- **Spectrum Amplitude Range:** Adjusts the dynamic range of spectrum analyzer.
- **Smooth:** Spectrum frequency smoothing amount. At 0% accurate but jagged; at 100% very smooth.
- **Release:** Spectrum display release time.
- **Spectrogram Button:** Toggles between spectrum and spectrogram display.
- **Trigger Source:** Trigger source of oscilloscope. Options are:
    - Autocorrelation
    - Frequency
    - Rising Edge
- **Trigger Frequency:** Adjust the frequency when **Trigger Source** is set to "Frequency"
- **Correlation meter zoom:** Display zoom. Adjustable from 0.1 to 1. Default: 0.5.

---

## Tips and tricks
