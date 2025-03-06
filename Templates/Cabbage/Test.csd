<Cabbage>
form caption("Untitled") size(400, 300), guiMode("queue"), pluginId("def1")
button bounds(10, 10, 30, 30, channel("but1")
button bounds(10, 40, 30, 30, channel("but2")
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
a1 oscili p5, p4, 1
outs a1, a1
kButton chnget "but1"
printk2 
endin

instr 2
kButton chnget "but2"
printk2 
endin

</CsInstruments>
<CsScore>
f1 0 1024 10 1
f0 3600
</CsScore>
</CsoundSynthesizer>
