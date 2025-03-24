<Cabbage>
form caption("17EDO") size(1000, 380), guiMode("queue"), pluginId("def1")

;;MIDI midiin  instr   130
;;
;;knotelength    init    0
;;knoteontime    init    0
;;
;;kstatus, kchan, kdata1, kdata2                  midiin

;OSC 1;
groupbox bounds(000, 000, 100, 080), text("OSC 1"), colour(10,38,10), corners(0)
checkbox bounds(010, 040, 020, 020), channel("Osc1"), corners(0)
combobox bounds(040, 040, 050, 020), channel("Wav1"), text("saw", "sqr", "tri"), range(1, 4, 1, 1, 1)

;OSC 2;
groupbox bounds(000, 080, 100, 080), text("OSC 2"), colour(10,38,10), corners(0)
checkbox bounds(010, 120, 020, 020), channel("Osc2"), corners(0)
combobox bounds(040, 120, 050, 020), channel("Wav2"), text("saw", "sqr", "tri"), range(1, 4, 1, 1, 1)

;LFO;
groupbox bounds(100, 000, 170, 160), text("LFO"), colour(10,38,10), corners(0)
checkbox bounds(110, 040, 020, 020), channel("Pitch"), corners(0)
label    bounds(100, 060, 040, 020), fontSize(12), text("Pitch")
label    bounds(100, 100, 040, 020), fontSize(12), text("VCA")
checkbox bounds(110, 120, 020, 020), channel("VCA"), corners(0)
rslider  bounds(130, 045, 080, 080), channel("LFODep"), valueTextBox(1), textBox(1), text("Depth"),  range(0,  5, 0.05)
rslider  bounds(190, 045, 080, 080), channel("LFORte"), valueTextBox(1), textBox(1), text("Rate"),  range(0,  5, 0.05)

;ADSR;
groupbox bounds(270, 000, 260, 160), text("ADSR"), colour(10,38,10), corners(0)
rslider  bounds(270, 045, 080, 080), valueTextBox(1), textBox(1), text("Atk"), channel("AAtk"),  range(0,  5, 0.05)
rslider  bounds(330, 045, 080, 080), valueTextBox(1), textBox(1), text("Dec"), channel("ADec"),  range(0,  5, 0.5)
rslider  bounds(390, 045, 080, 080), valueTextBox(1), textBox(1), text("Sus"), channel("ASus"),  range(0,  1, 1)
rslider  bounds(450, 045, 080, 080), valueTextBox(1), textBox(1), text("Rel"), channel("ARel"),  range(0,  5, 0.2)

;Filter;
groupbox bounds(530, 000, 190, 160), text("Filter"), colour(10,38,10), corners(0)
combobox bounds(540, 075, 050, 020), channel("VCF"), text("LPF", "HPF"), range(1, 2, 1, 1, 1)
rslider  bounds(580, 045, 080, 080), valueTextBox(1), textBox(1), text("Cutoff"), channel("FilCut"),  range(0,  5, 0.05)
rslider  bounds(640, 045, 080, 080), valueTextBox(1), textBox(1), text("Res"), channel("FilRes"),  range(0,  5, 0.05)

;Effect;
groupbox bounds(720, 000, 190, 160), text("Effect"), colour(10,38,10), corners(0)
combobox bounds(730, 075, 050, 020), channel("Effect"), text("Chr", "Del", "Rev"), range(1, 4, 1, 1, 1)
rslider  bounds(770, 045, 080, 080), valueTextBox(1), textBox(1), text("Mod1"), channel("Mod1"),  range(0,  5, 0.05)
rslider  bounds(830, 045, 080, 080), valueTextBox(1), textBox(1), text("Mod2"), channel("Mod2"),  range(0,  5, 0.05)

;Output;
groupbox bounds(910, 000, 090, 160), text("Output"), colour(10,38,10), corners(0)
rslider  bounds(915, 045, 080, 080), valueTextBox(1), textBox(1), text("Volume"), channel("Vol"),  range(0,  5, 0.05)

;KEYBOARD;
groupbox bounds(000, 160, 1000, 400), text("Keyboard")  colour(10,38,10), corners(0)
;Homerow;
button   bounds (050, 250, 050, 050), channel("but101"), latched(0), text("C3"), colour:0(128,128,128) ;101;
button   bounds (100, 250, 050, 050), channel("but104"), latched(0), text("D3"), colour:0(128,128,128) ;104;
button   bounds (150, 250, 050, 050), channel("but107"), latched(0), text("E3"), colour:0(128,128,128) ;107;
button   bounds (200, 250, 050, 050), channel("but108"), latched(0), text("F3"), colour:0(128,128,128) ;108;
button   bounds (250, 250, 050, 050), channel("but111"), latched(0), text("G3"), colour:0(128,128,128) ;111;
button   bounds (300, 250, 050, 050), channel("but114"), latched(0), text("A3"), colour:0(128,128,128) ;114;
button   bounds (350, 250, 050, 050), channel("but117"), latched(0), text("B3"), colour:0(128,128,128) ;117;
button   bounds (400, 250, 050, 050), channel("but201"), latched(0), text("C4"), colour:0(128,128,128) ;201;
button   bounds (450, 250, 050, 050), channel("but204"), latched(0), text("D4"), colour:0(128,128,128) ;204;
button   bounds (500, 250, 050, 050), channel("but207"), latched(0), text("E4"), colour:0(128,128,128) ;207;
button   bounds (550, 250, 050, 050), channel("but208"), latched(0), text("F4"), colour:0(128,128,128) ;208;
button   bounds (600, 250, 050, 050), channel("but211"), latched(0), text("G4"), colour:0(128,128,128) ;211;
button   bounds (650, 250, 050, 050), channel("but214"), latched(0), text("A4"), colour:0(128,128,128) ;214;
button   bounds (700, 250, 050, 050), channel("but217"), latched(0), text("B4"), colour:0(128,128,128) ;217;
button   bounds (750, 250, 050, 050), channel("but301"), latched(0), text("C5"), colour:0(128,128,128) ;301;
button   bounds (800, 250, 050, 050), channel("but304"), latched(0), text("D5"), colour:0(128,128,128) ;304;
button   bounds (850, 250, 050, 050), channel("but307"), latched(0), text("E5"), colour:0(128,128,128) ;307;
;Sharps:
button   bounds (060, 200, 050, 050), channel("but102"), latched(0), text("C#3"), colour:0(0,0,0) ;102;
button   bounds (110, 200, 050, 050), channel("but105"), latched(0), text("D#3"), colour:0(0,0,0) ;105;
button   bounds (210, 200, 050, 050), channel("but109"), latched(0), text("F#3"), colour:0(0,0,0) ;109;
button   bounds (260, 200, 050, 050), channel("but112"), latched(0), text("G#3"), colour:0(0,0,0) ;112;
button   bounds (310, 200, 050, 050), channel("but115"), latched(0), text("A#3"), colour:0(0,0,0) ;115;
button   bounds (410, 200, 050, 050), channel("but202"), latched(0), text("C#4"), colour:0(0,0,0) ;202;
button   bounds (460, 200, 050, 050), channel("but205"), latched(0), text("D#4"), colour:0(0,0,0) ;205;
button   bounds (560, 200, 050, 050), channel("but209"), latched(0), text("F#4"), colour:0(0,0,0) ;209;
button   bounds (610, 200, 050, 050), channel("but212"), latched(0), text("G#4"), colour:0(0,0,0) ;212;
button   bounds (660, 200, 050, 050), channel("but215"), latched(0), text("A#4"), colour:0(0,0,0) ;215;
button   bounds (760, 200, 050, 050), channel("but302"), latched(0), text("C#5"), colour:0(0,0,0) ;302;
button   bounds (810, 200, 050, 050), channel("but305"), latched(0), text("D#5"), colour:0(0,0,0) ;305;
;Flats;
button   bounds (090, 300, 050, 050), channel("but103"), latched(0), text("Db3"), colour:0(255,255,255), fontColour:0(0,0,0) ;103;
button   bounds (140, 300, 050, 050), channel("but106"), latched(0), text("Eb3"), colour:0(255,255,255), fontColour:0(0,0,0) ;106;
button   bounds (240, 300, 050, 050), channel("but110"), latched(0), text("Gb3"), colour:0(255,255,255), fontColour:0(0,0,0) ;110;
button   bounds (290, 300, 050, 050), channel("but113"), latched(0), text("Ab3"), colour:0(255,255,255), fontColour:0(0,0,0) ;113;
button   bounds (340, 300, 050, 050), channel("but116"), latched(0), text("Bb3"), colour:0(255,255,255), fontColour:0(0,0,0) ;116;
button   bounds (440, 300, 050, 050), channel("but203"), latched(0), text("Db4"), colour:0(255,255,255), fontColour:0(0,0,0) ;203;
button   bounds (490, 300, 050, 050), channel("but206"), latched(0), text("Eb4"), colour:0(255,255,255), fontColour:0(0,0,0) ;206;
button   bounds (590, 300, 050, 050), channel("but210"), latched(0), text("Gb4"), colour:0(255,255,255), fontColour:0(0,0,0) ;210;
button   bounds (640, 300, 050, 050), channel("but213"), latched(0), text("Ab4"), colour:0(255,255,255), fontColour:0(0,0,0) ;213;
button   bounds (690, 300, 050, 050), channel("but216"), latched(0), text("Bb4"), colour:0(255,255,255), fontColour:0(0,0,0) ;216;
button   bounds (790, 300, 050, 050), channel("but303"), latched(0), text("Db5"), colour:0(255,255,255), fontColour:0(0,0,0) ;303;
button   bounds (840, 300, 050, 050), channel("but306"), latched(0), text("Eb5"), colour:0(255,255,255), fontColour:0(0,0,0) ;306;

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

instr 101 ;C3;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 129.486, 2, 0.5
outs ares, ares
endin

instr 102 ;C#3;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 134.874, 2, 0.5
outs ares, ares
endin

instr 103 ;Db3;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 140.487, 2, 0.5
outs ares, ares
endin

instr 104 ;D3;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 146.334, 2, 0.5
outs ares, ares
endin

instr 105 ;D#3;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 152.424, 2, 0.5
outs ares, ares
endin

instr 106 ;Eb3;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 158.767, 2, 0.5
outs ares, ares
endin

instr 107 ;E3;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 165.374, 2, 0.5
outs ares, ares
endin

instr 108 ;F3;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 172.256, 2, 0.5
outs ares, ares
endin

instr 109 ;F#3;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 179.425, 2, 0.5
outs ares, ares
endin

instr 110 ;Gb3;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 186.892, 2, 0.5
outs ares, ares
endin

instr 111 ;G3;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 194.670, 2, 0.5
outs ares, ares
endin

instr 112 ;G#3;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 202.771, 2, 0.5
outs ares, ares
endin

instr 113 ;Ab3;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 211.210, 2, 0.5
outs ares, ares
endin

instr 114 ;A3;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 220, 2, 0.5
outs ares, ares
endin

instr 115 ;A#3;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 229.155, 2, 0.5
outs ares, ares
endin

instr 116 ;Bb3;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 238.692, 2, 0.5
outs ares, ares
endin

instr 117 ;B3;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 248.625, 2, 0.5
outs ares, ares
endin

instr 201 ;C4;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 258.972, 2, 0.5
outs ares, ares
endin

instr 202 ;C#4;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 269.749, 2, 0.5
outs ares, ares
endin

instr 203 ;Db4;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 280.975, 2, 0.5
outs ares, ares
endin

instr 204 ;D4;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 292.688, 2, 0.5
outs ares, ares
endin

instr 205 ;D#4;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 304.848, 2, 0.5
outs ares, ares
endin

instr 206 ;Eb4;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 317.534, 2, 0.5
outs ares, ares
endin

instr 207 ;E4;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 330.749, 2, 0.5
outs ares, ares
endin

instr 208 ;F4;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 344.513, 2, 0.5
outs ares, ares
endin

instr 209 ;F#4;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 358.851, 2, 0.5
outs ares, ares
endin

instr 210 ;Gb4;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 373.785, 2, 0.5
outs ares, ares
endin

instr 211 ;G4;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 389.340, 2, 0.5
outs ares, ares
endin

instr 212 ;G#4;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 405.543, 2, 0.5
outs ares, ares
endin

instr 213 ;Ab4;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 422.420, 2, 0.5
outs ares, ares
endin

instr 214 ;A4;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 440.000, 2, 0.5
outs ares, ares
endin

instr 215 ;A#4;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 458.311, 2, 0.5
outs ares, ares
endin

instr 216 ;Bb4;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 477.384, 2, 0.5
outs ares, ares
endin

instr 217 ;B4;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 497.250, 2, 0.5
outs ares, ares
endin

instr 301 ;C5;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 517.944, 2, 0.5
outs ares, ares
endin

instr 302 ;C#5;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 539.499, 2, 0.5
outs ares, ares
endin

instr 303 ;Db4;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 561.951, 2, 0.5
outs ares, ares
endin

instr 304 ;D5;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 585.337, 2, 0.5
outs ares, ares
endin

instr 305 ;D#5;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 609.696, 2, 0.5
outs ares, ares
endin

instr 306 ;Eb5;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 635.069, 2, 0.5
outs ares, ares
endin

instr 307 ;E5;
  aenv madsr .1, .15, .1, 0.1
  ares vco aenv, 661.498, 2, 0.5
outs ares, ares
endin


</CsInstruments>
<CsScore>
f1 0 1024 10 1
i1 0 100
</CsScore>
</CsoundSynthesizer>

; John Heinze 2025
;
; License: CC0 1.0 Universal
; You can copy, modify, and distribute this file, 
; even for commercial purposes, all without asking permission. 
