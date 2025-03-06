<Cabbage>
form caption("Untitled") size(450, 300), colour(58, 110, 182), pluginId("def1")
rslider bounds(12, 14, 70, 70), channel("att"), range(0, 1, 0.01, 1, .01), text("Attack")
rslider bounds(82, 14, 70, 70), channel("dec"), range(0, 1, 0.5, 1, .01), text("Decay")
rslider bounds(152, 14, 70, 70), channel("sus"), range(0, 1, 0.5, 1, .01), text("Sustain")
rslider bounds(222, 14, 70, 70), channel("rel"), range(0, 1, 0.7, 1, .01), text("Release")
rslider bounds(292, 14, 70, 70), channel("cutoff"), range(0, 22000, 2000, .5, .01), text("Cut-Off")
rslider bounds(360, 14, 70, 70), channel("res"), range(0, 1, 0.7, 1, .01), text("Resonance")
button bounds(10, 110, 30, 30, channel("but1"), text("A4")
button bounds(10, 140, 30, 30, channel("but2"), text("C4")
</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -d -+rtmidi=NULL -M0 --midi-key-cps=4 --midi-velocity-amp=5
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 64
nchnls = 2
0dbfs=1

instr 1
 iFreq = p4
 iAmp = p5
 iAtt chnget "att"
 iDec chnget "dec"
 iSus chnget "sus"
 iRel chnget "rel"
 kEnv madsr iAtt, iDec, iSus, iRel 
 aOut vco2 iAmp, iFreq
 out aOut*kEnv, aOut*kEnv
endin

instr 2
 kButton chnget "but2"
 printk2 
endin

</CsInstruments>
<CsScore>
f0 z
</CsScore>
</CsoundSynthesizer>
