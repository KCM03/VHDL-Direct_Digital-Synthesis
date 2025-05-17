# VHDL-Direct_Digital-Synthesis
Generation of a Sine-Wave with Customisable Frequency and Amplitude for use in a frequency-modulator guitar pedal.</b>

<img width="315" alt="image" src="https://github.com/user-attachments/assets/232506b4-df9c-4508-b2ed-d6f9ae5ebbb5" /></b>

-To generate outputs from this IP, a sine ROM must be generated using the block memory generator IP; a VHDL wrapper must also be written to interface with the user-side logic.

<img width="734" alt="image" src="https://github.com/user-attachments/assets/478f0f1d-5ebd-4976-ba40-bddbaffdf644" />
<img width="481" alt="image" src="https://github.com/user-attachments/assets/1ba6dec6-0bda-4a24-9ceb-54ebc3adc17b" />
<\b>

-A *.coe initialisation file was written in MATLAB to generate 256 samples (giving 8 addressable bits) of an 8-bit (0-255) sinusoidal waveform. Set the initialisation radix to 10 (or the base of your selected coe file).</b>

<img width="483" alt="image" src="https://github.com/user-attachments/assets/a36c4337-e18d-4783-80b2-446156a08ff9" />

<img width="821" alt="image" src="https://github.com/user-attachments/assets/54572062-2fb2-46a1-a41e-7488b6f2d2ce" /></b>


-This wave's period and amplitude are determined by user-side logic; the depth and frequency of the waveform go from 0 to 255.


