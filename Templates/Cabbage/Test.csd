<Cabbage>
form caption("Untitled") size(450, 310), colour(58, 110, 182), pluginId("def1")
rslider bounds(12, 14, 70, 70), channel("att"), range(0, 1, 0.01, 1, .01), text("Attack")
rslider bounds(82, 14, 70, 70), channel("dec"), range(0, 1, 0.5, 1, .01), text("Decay")
rslider bounds(152, 14, 70, 70), channel("sus"), range(0, 1, 0.5, 1, .01), text("Sustain")
rslider bounds(222, 14, 70, 70), channel("rel"), range(0, 1, 0.7, 1, .01), text("Release")
rslider bounds(292, 14, 70, 70), channel("cutoff"), range(0, 22000, 2000, .5, .01), text("Cut-Off")
rslider bounds(360, 14, 70, 70), channel("res"), range(0, 1, 0.7, 1, .01), text("Resonance")
button bounds(10, 260, 40, 40, channel("butA1"), text("A1")
button bounds(10, 220, 40, 40, channel("butA2"), text("A2")
button bounds(10, 180, 40, 40, channel("butA3"), text("A3")
button bounds(10, 140, 40, 40, channel("butA4"), text("A4")
button bounds(10, 100, 40, 40, channel("butA5"), text("A5")
button bounds(50, 260, 40, 40, channel("butB1"), text("B1")
button bounds(50, 220, 40, 40, channel("butB2"), text("B2")
button bounds(50, 180, 40, 40, channel("butB3"), text("B3")
button bounds(50, 140, 40, 40, channel("butB4"), text("B4")
button bounds(50, 100, 40, 40, channel("butB5"), text("B5")
button bounds(90, 260, 40, 40, channel("butC1"), text("C1")
button bounds(90, 220, 40, 40, channel("butC2"), text("C2")
button bounds(90, 180, 40, 40, channel("butC3"), text("C3")
button bounds(90, 140, 40, 40, channel("butC4"), text("C4")
button bounds(90, 100, 40, 40, channel("butC5"), text("C5")
</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -d
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
 kRes chnget "res"
 kCutOff chnget "cutoff"

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
