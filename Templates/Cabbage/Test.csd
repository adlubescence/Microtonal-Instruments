<Cabbage>
form caption("17EDO") size(1000, 380), guiMode("queue"), pluginId("def1")

;;MIDI midiin  instr   130
;;
;;knotelength    init    0
;;knoteontime    init    0
;;
;;kstatus, kchan, kdata1, kdata2                  midiin


;OSC 1;
groupbox text("OSC 1") bounds(0, 0, 100, 80), colour(8, 66, 142, 255), corners(0)
checkbox bounds(10, 40, 20, 20), channel("Osc1"), corners(0)
combobox channel("combobox1"), range(1, 4, 1, 1, 1), bounds(40, 40, 50, 20), text("saw", "sqr", "tri")
;OSC 2;
groupbox text("OSC 2") bounds(0, 80, 100, 80), colour(8, 66, 142, 255) corners(0)
checkbox bounds(10, 120, 20, 20), channel("Osc2"), corners(0)
combobox channel("combobox2"), range(1, 4, 1, 1, 1), bounds(40, 120, 50, 20), text("saw", "sqr", "tri")

;LFO;
groupbox text("LFO") bounds(100, 0, 170, 160), colour(8, 66, 142, 255) corners(0)
checkbox bounds(110, 40, 20, 20), channel("Pitch"), corners(0)
label bounds(100, 60, 40, 20), fontSize(12), text("Pitch")
label bounds(100, 100, 40, 20), fontSize(12), text("VCA")
checkbox bounds(110, 120, 20, 20), channel("VCA"), corners(0)
rslider    bounds(130, 45, 80, 80), valueTextBox(1), textBox(1), text("Depth"), channel("LFODep"),  range(0,  5, 0.05), $SLIDER_STYLE
rslider    bounds(190, 45, 80, 80), valueTextBox(1), textBox(1), text("Rate"), channel("LFORte"),  range(0,  5, 0.05), $SLIDER_STYLE

;ADSR;
groupbox text("ADSR") bounds(270, 0, 260, 160), colour(8, 66, 142, 255) corners(0)
rslider    bounds(270, 45, 80, 80), valueTextBox(1), textBox(1), text("Atk"), channel("AAtk"),  range(0,  5, 0.05), $SLIDER_STYLE
rslider    bounds(330, 45, 80, 80), valueTextBox(1), textBox(1), text("Dec"), channel("ADec"),  range(0,  5, 0.5), $SLIDER_STYLE
rslider    bounds(390, 45, 80, 80), valueTextBox(1), textBox(1), text("Sus"), channel("ASus"),  range(0,  1, 1), $SLIDER_STYLE
rslider    bounds(450, 45, 80, 80), valueTextBox(1), textBox(1), text("Rel"), channel("ARel"),  range(0,  5, 0.2), $SLIDER_STYLEs

;Filter;
groupbox text("Filter") bounds(530, 0, 190, 160), colour(8, 66, 142, 255) corners(0)
listbox bounds (540, 75, 50, 20), channel("VCF"), text("LPF", "HPF")
rslider    bounds(580, 45, 80, 80), valueTextBox(1), textBox(1), text("Cutoff"), channel("FilCut"),  range(0,  5, 0.05), $SLIDER_STYLE
rslider    bounds(640, 45, 80, 80), valueTextBox(1), textBox(1), text("Res"), channel("FilRes"),  range(0,  5, 0.05), $SLIDER_STYLE


;Effect;
groupbox text("Effect") bounds(720, 0, 190, 160), colour(8, 66, 142, 255) corners(0)
listbox bounds (730, 75, 50, 20), channel("Effect"), text("Chr", "Del", "Rev")
rslider    bounds(770, 45, 80, 80), valueTextBox(1), textBox(1), text("Mod1"), channel("Mod1"),  range(0,  5, 0.05), $SLIDER_STYLE
rslider    bounds(830, 45, 80, 80), valueTextBox(1), textBox(1), text("Mod2"), channel("Mod2"),  range(0,  5, 0.05), $SLIDER_STYL

;Output;
groupbox text("Output") bounds(910, 0, 90, 160), colour(8, 66, 142, 255) corners(0)
rslider    bounds(915, 45, 80, 80), valueTextBox(1), textBox(1), text("Volume"), channel("Vol"),  range(0,  5, 0.05), $SLIDER_STYLE


;KEYBOARD;
groupbox text("Keyboard") bounds(0, 160, 1000, 400), colour(8, 66, 142, 255) corners(0)
;Homerow;
button bounds (50, 250, 50, 50), channel("but101"), text("C4") ;101;
button bounds (100, 250, 50, 50), channel("but104"), text("D4") ;104;
button bounds (150, 250, 50, 50), channel("but107"), text("E4") ;107;
button bounds (200, 250, 50, 50), channel("but108"), text("F4") ;108;
button bounds (250, 250, 50, 50), channel("but111"), text("G4") ;111;
button bounds (300, 250, 50, 50), channel("but114"), text("A4") ;114;
button bounds (350, 250, 50, 50), channel("but117"), text("B4") ;117;
button bounds (400, 250, 50, 50), channel("but201"), text("C5") ;201;
button bounds (450, 250, 50, 50), channel("but204"), text("D5") ;204;
button bounds (500, 250, 50, 50), channel("but207"), text("E5") ;207;
button bounds (550, 250, 50, 50), channel("but208"), text("F5") ;208;
button bounds (600, 250, 50, 50), channel("but211"), text("G5") ;211;
button bounds (650, 250, 50, 50), channel("but214"), text("A5") ;214;
button bounds (700, 250, 50, 50), channel("but217"), text("B5") ;217;
button bounds (750, 250, 50, 50), channel("but301"), text("C6") ;301;
button bounds (800, 250, 50, 50), channel("but304"), text("D6") ;304;
button bounds (850, 250, 50, 50), channel("but207"), text("E6") ;307;
;Sharps:
button bounds (60, 200, 50, 50), channel("but102"), text("C#4") ;102;
button bounds (110, 200, 50, 50), channel("but105"), text("D#4") ;105;
button bounds (210, 200, 50, 50), channel("but109"), text("F#4") ;109;
button bounds (260, 200, 50, 50), channel("but112"), text("G#4") ;112;
button bounds (310, 200, 50, 50), channel("but115"), text("A#4") ;115;
button bounds (410, 200, 50, 50), channel("but202"), text("C#5") ;202;
button bounds (460, 200, 50, 50), channel("but205"), text("D#5") ;205;
button bounds (560, 200, 50, 50), channel("but209"), text("F#5") ;209;
button bounds (610, 200, 50, 50), channel("but212"), text("G#5") ;212;
button bounds (660, 200, 50, 50), channel("but215"), text("A#5") ;215;
button bounds (760, 200, 50, 50), channel("but302"), text("C#6") ;302;
button bounds (810, 200, 50, 50), channel("but205"), text("D#6") ;305;
;Flats;
button bounds (90, 300, 50, 50), channel("but103"), text("Db4") ;103;
button bounds (140, 300, 50, 50), channel("but106"), text("Eb4") ;106;
button bounds (240, 300, 50, 50), channel("but110"), text("Gb4") ;110;
button bounds (290, 300, 50, 50), channel("but113"), text("Ab4") ;113;
button bounds (340, 300, 50, 50), channel("but116"), text("Bb4") ;116;
button bounds (440, 300, 50, 50), channel("but203"), text("Db5") ;203;
button bounds (490, 300, 50, 50), channel("but206"), text("Eb5") ;206;
button bounds (590, 300, 50, 50), channel("but210"), text("Gb5") ;210;
button bounds (640, 300, 50, 50), channel("but213"), text("Ab5") ;213;
button bounds (690, 300, 50, 50), channel("but216"), text("Bb5") ;216;
button bounds (790, 300, 50, 50), channel("but303"), text("Db6") ;303;
button bounds (840, 300, 50, 50), channel("but306"), text("Eb6") ;306;

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
    event "i", 101, 0, .5
endif
kBut chnget "but102"
if changed:k(kBut)==1 then
    event "i", 102, 0, .5
endif
kBut chnget "but103"
if changed:k(kBut)==1 then
    event "i", 103, 0, .5
endif
kBut chnget "but104"
if changed:k(kBut)==1 then
    event "i", 104, 0, .5
endif
kBut chnget "but105"
if changed:k(kBut)==1 then
    event "i", 105, 0, .5
endif
kBut chnget "but106"
if changed:k(kBut)==1 then
    event "i", 106, 0, .5
endif
kBut chnget "but107"
if changed:k(kBut)==1 then
    event "i", 107, 0, .5
endif
kBut chnget "but108"
if changed:k(kBut)==1 then
    event "i", 108, 0, .5
endif
kBut chnget "but109"
if changed:k(kBut)==1 then
    event "i", 109, 0, .5
endif
kBut chnget "but110"
if changed:k(kBut)==1 then
    event "i", 110, 0, .5
endif
kBut chnget "but111"
if changed:k(kBut)==1 then
    event "i", 111, 0, .5
endif
kBut chnget "but112"
if changed:k(kBut)==1 then
    event "i", 112, 0, .5
endif
kBut chnget "but113"
if changed:k(kBut)==1 then
    event "i", 113, 0, .5
endif
kBut chnget "but114"
if changed:k(kBut)==1 then
    event "i", 114, 0, .5
endif
kBut chnget "but115"
if changed:k(kBut)==1 then
    event "i", 115, 0, .5
endif
kBut chnget "but116"
if changed:k(kBut)==1 then
    event "i", 116, 0, .5
endif
kBut chnget "but117"
if changed:k(kBut)==1 then
    event "i", 117, 0, .5
endif
kBut chnget "but201"
if changed:k(kBut)==1 then
    event "i", 201, 0, .5
endif
kBut chnget "but202"
if changed:k(kBut)==1 then
    event "i", 202, 0, .5
endif
kBut chnget "but203"
if changed:k(kBut)==1 then
    event "i", 203, 0, .5
endif
kBut chnget "but204"
if changed:k(kBut)==1 then
    event "i", 204, 0, .5
endif
kBut chnget "but205"
if changed:k(kBut)==1 then
    event "i", 205, 0, .5
endif
kBut chnget "but206"
if changed:k(kBut)==1 then
    event "i", 206, 0, .5
endif
kBut chnget "but207"
if changed:k(kBut)==1 then
    event "i", 207, 0, .5
endif
kBut chnget "but208"
if changed:k(kBut)==1 then
    event "i", 208, 0, .5
endif
kBut chnget "but209"
if changed:k(kBut)==1 then
    event "i", 209, 0, .5
endif
kBut chnget "but210"
if changed:k(kBut)==1 then
    event "i", 210, 0, .5
endif
kBut chnget "but211"
if changed:k(kBut)==1 then
    event "i", 211, 0, .5
endif
kBut chnget "but212"
if changed:k(kBut)==1 then
    event "i", 212, 0, .5
endif
kBut chnget "but213"
if changed:k(kBut)==1 then
    event "i", 213, 0, .5
endif
kBut chnget "but214"
if changed:k(kBut)==1 then
    event "i", 214, 0, .5
endif
kBut chnget "but215"
if changed:k(kBut)==1 then
    event "i", 215, 0, .5
endif
kBut chnget "but216"
if changed:k(kBut)==1 then
    event "i", 216, 0, .5
endif
kBut chnget "but217"
if changed:k(kBut)==1 then
    event "i", 217, 0, .5
endif
kBut chnget "but301"
if changed:k(kBut)==1 then
    event "i", 301, 0, .5
endif
kBut chnget "but302"
if changed:k(kBut)==1 then
    event "i", 302, 0, .5
endif
kBut chnget "but303"
if changed:k(kBut)==1 then
    event "i", 303, 0, .5
endif
kBut chnget "but304"
if changed:k(kBut)==1 then
    event "i", 304, 0, .5
endif
kBut chnget "but305"
if changed:k(kBut)==1 then
    event "i", 305, 0, .5
endif
kBut chnget "but306"
if changed:k(kBut)==1 then
    event "i", 306, 0, .5
endif
kBut chnget "but307"
if changed:k(kBut)==1 then
    event "i", 307, 0, .5
endif
endin

;Keys;

instr 101 ;C4;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 258.972, 2, 0.5
  a2 oscili aenv, 258.972
outs ares, ares
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

instr 201 ;C5;
a1 expon 1, p3, 0.001
a2 oscili a1, 517.944
outs a2, a2
endin

instr 202 ;C#5;
a1 expon 1, p3, 0.001
a2 oscili a1, 539.499
outs a2, a2
endin

instr 203 ;Db4;
a1 expon 1, p3, 0.001
a2 oscili a1, 280.975
outs a2, a2
endin

instr 204 ;D4;
a1 expon 1, p3, 0.001
a2 oscili a1, 292.668
outs a2, a2
endin

instr 205 ;D#4;
a1 expon 1, p3, 0.001
a2 oscili a1, 304.848
outs a2, a2
endin

instr 206 ;Eb4;
a1 expon 1, p3, 0.001
a2 oscili a1, 317.534
outs a2, a2
endin

instr 207 ;E4;
a1 expon 1, p3, 0.001
a2 oscili a1, 330.749
outs a2, a2
endin

instr 208 ;F4;
a1 expon 1, p3, 0.001
a2 oscili a1, 344.513
outs a2, a2
endin

instr 209 ;F#4;
a1 expon 1, p3, 0.001
a2 oscili a1, 358.851
outs a2, a2
endin

instr 210 ;Gb4;
a1 expon 1, p3, 0.001
a2 oscili a1, 373.785
outs a2, a2
endin

instr 211 ;G4;
a1 expon 1, p3, 0.001
a2 oscili a1, 389.340
outs a2, a2
endin

instr 212 ;G#4;
a1 expon 1, p3, 0.001
a2 oscili a1, 405.543
outs a2, a2
endin

instr 213 ;Ab4;
a1 expon 1, p3, 0.001
a2 oscili a1, 422.420
outs a2, a2
endin

instr 214 ;A4;
a1 expon 1, p3, 0.001
a2 oscili a1, 440.000
outs a2, a2
endin

instr 215 ;A#4;
a1 expon 1, p3, 0.001
a2 oscili a1, 458.311
outs a2, a2
endin

instr 216 ;Bb4;
a1 expon 1, p3, 0.001
a2 oscili a1, 477.384
outs a2, a2
endin

instr 217 ;B4;
a1 expon 1, p3, 0.001
a2 oscili a1, 497.250
outs a2, a2
endin
instr 301 ;C5;
a1 expon 1, p3, 0.001
a2 oscili a1, 517.944
outs a2, a2
endin

instr 302 ;C#5;
a1 expon 1, p3, 0.001
a2 oscili a1, 539.499
outs a2, a2
endin

instr 303 ;Db4;
a1 expon 1, p3, 0.001
a2 oscili a1, 280.975
outs a2, a2
endin

instr 304 ;D4;
a1 expon 1, p3, 0.001
a2 oscili a1, 292.668
outs a2, a2
endin

instr 305 ;D#4;
a1 expon 1, p3, 0.001
a2 oscili a1, 304.848
outs a2, a2
endin

instr 306 ;Eb4;
a1 expon 1, p3, 0.001
a2 oscili a1, 317.534
outs a2, a2
endin

instr 307 ;E4;
a1 expon 1, p3, 0.001
a2 oscili a1, 330.749
outs a2, a2
endin


</CsInstruments>
<CsScore>
f1 0 1024 10 1
i1 0 100
</CsScore>
</CsoundSynthesizer>
