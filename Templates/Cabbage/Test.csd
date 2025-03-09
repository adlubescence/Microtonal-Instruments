<Cabbage>
form caption("17EDO") size(500, 300), guiMode("queue"), pluginId("def1")

;Homerow;
button bounds (50, 100, 50, 50), channel("but101"), text("C4") ;101;
button bounds (100, 100, 50, 50), channel("but104"), text("D4") ;104;
button bounds (150, 100, 50, 50), channel("but107"), text("E4") ;107;
button bounds (200, 100, 50, 50), channel("but108"), text("F4") ;108;
button bounds (250, 100, 50, 50), channel("but111"), text("G4") ;111;
button bounds (300, 100, 50, 50), channel("but114"), text("A4") ;114;
button bounds (350, 100, 50, 50), channel("but117"), text("B4") ;117;
button bounds (400, 100, 50, 50), channel("but118"), text("C5") ;118;
;Sharps:
button bounds (60, 50, 50, 50), channel("but102"), text("C#4") ;102;
button bounds (110, 50, 50, 50), channel("but105"), text("D#4") ;105;
button bounds (210, 50, 50, 50), channel("but109"), text("F#4") ;109;
button bounds (260, 50, 50, 50), channel("but112"), text("G#4") ;112;
button bounds (310, 50, 50, 50), channel("but115"), text("A#4") ;115;
button bounds (410, 50, 50, 50), channel("but119"), text("C#5") ;119;
;Flats;
button bounds (90, 150, 50, 50), channel("but103"), text("Db4") ;103;
button bounds (140, 150, 50, 50), channel("but106"), text("Eb4") ;106;
button bounds (240, 150, 50, 50), channel("but110"), text("Gb4") ;110;
button bounds (290, 150, 50, 50), channel("but113"), text("Ab4") ;113;
button bounds (340, 150, 50, 50), channel("but116"), text("Bb4") ;116;

</Cabbage>
<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>
ksmps = 64
nchnls = 2
0dbfs = 1

instr 001
kBut chnget "but101"
if changed:k(kBut)==1 then
    event "i", 101, 0, 3
endif
kBut chnget "but102"
if changed:k(kBut)==1 then
    event "i", 102, 0, 3
endif
kBut chnget "but103"
if changed:k(kBut)==1 then
    event "i", 103, 0, 3
endif
kBut chnget "but104"
if changed:k(kBut)==1 then
    event "i", 104, 0, 3
endif
kBut chnget "but105"
if changed:k(kBut)==1 then
    event "i", 105, 0, 3
endif
kBut chnget "but106"
if changed:k(kBut)==1 then
    event "i", 106, 0, 3
endif
kBut chnget "but107"
if changed:k(kBut)==1 then
    event "i", 107, 0, 3
endif
kBut chnget "but108"
if changed:k(kBut)==1 then
    event "i", 108, 0, 3
endif
kBut chnget "but109"
if changed:k(kBut)==1 then
    event "i", 109, 0, 3
endif
kBut chnget "but110"
if changed:k(kBut)==1 then
    event "i", 110, 0, 3
endif
kBut chnget "but111"
if changed:k(kBut)==1 then
    event "i", 111, 0, 3
endif
kBut chnget "but112"
if changed:k(kBut)==1 then
    event "i", 112, 0, 3
endif
kBut chnget "but113"
if changed:k(kBut)==1 then
    event "i", 113, 0, 3
endif
kBut chnget "but114"
if changed:k(kBut)==1 then
    event "i", 114, 0, 3
endif
kBut chnget "but115"
if changed:k(kBut)==1 then
    event "i", 115, 0, 3
endif
kBut chnget "but116"
if changed:k(kBut)==1 then
    event "i", 116, 0, 3
endif
kBut chnget "but117"
if changed:k(kBut)==1 then
    event "i", 117, 0, 3
endif
kBut chnget "but118"
if changed:k(kBut)==1 then
    event "i", 118, 0, 3
endif
kBut chnget "but119"
if changed:k(kBut)==1 then
    event "i", 119, 0, 3
endif
endin

;Keys;

instr 101 ;C4;
a1 expon 1, p3, 0.001
a2 oscili a1, 258.972
outs a2, a2
endin

instr 102 ;C#4;
a1 expon 1, p3, 0.001
a2 oscili a1, 269.749
outs a2, a2
endin

instr 103 ;Db4;
a1 expon 1, p3, 0.001
a2 oscili a1, 280.975
outs a2, a2
endin

instr 104 ;D4;
a1 expon 1, p3, 0.001
a2 oscili a1, 292.668
outs a2, a2
endin

instr 105 ;D#4;
a1 expon 1, p3, 0.001
a2 oscili a1, 304.848
outs a2, a2
endin

instr 106 ;Eb4;
a1 expon 1, p3, 0.001
a2 oscili a1, 317.534
outs a2, a2
endin

instr 107 ;E4;
a1 expon 1, p3, 0.001
a2 oscili a1, 330.749
outs a2, a2
endin

instr 108 ;F4;
a1 expon 1, p3, 0.001
a2 oscili a1, 344.513
outs a2, a2
endin

instr 109 ;F#4;
a1 expon 1, p3, 0.001
a2 oscili a1, 358.851
outs a2, a2
endin

instr 110 ;Gb4;
a1 expon 1, p3, 0.001
a2 oscili a1, 373.785
outs a2, a2
endin

instr 111 ;G4;
a1 expon 1, p3, 0.001
a2 oscili a1, 389.340
outs a2, a2
endin

instr 112 ;G#4;
a1 expon 1, p3, 0.001
a2 oscili a1, 405.543
outs a2, a2
endin

instr 113 ;Ab4;
a1 expon 1, p3, 0.001
a2 oscili a1, 422.420
outs a2, a2
endin

instr 114 ;A4;
a1 expon 1, p3, 0.001
a2 oscili a1, 440.000
outs a2, a2
endin

instr 115 ;A#4;
a1 expon 1, p3, 0.001
a2 oscili a1, 458.311
outs a2, a2
endin

instr 116 ;Bb4;
a1 expon 1, p3, 0.001
a2 oscili a1, 477.384
outs a2, a2
endin

instr 117 ;B4;
a1 expon 1, p3, 0.001
a2 oscili a1, 497.250
outs a2, a2
endin

instr 118 ;C5;
a1 expon 1, p3, 0.001
a2 oscili a1, 517.944
outs a2, a2
endin

instr 119 ;C#5;
a1 expon 1, p3, 0.001
a2 oscili a1, 539.499
outs a2, a2
endin

</CsInstruments>
<CsScore>
f1 0 1024 10 1
i1 0 100
</CsScore>
</CsoundSynthesizer>
