'$INCLUDE: 'HZDlib.bi'

DECLARE SUB dsg.model1 ()
DECLARE SUB dsg.model2 ()
DECLARE SUB dsg.model3 ()
DECLARE SUB dsg.model4 ()
DECLARE SUB dsg.model5 ()
DECLARE SUB dsg.model6 ()
DECLARE SUB dsg.model7 ()
DECLARE SUB dsg.model8 ()
DECLARE SUB dsg.model9 ()
DECLARE SUB dsg.model10 ()
DECLARE SUB dsg.model11 ()
DECLARE SUB pal.model1 ()
DECLARE SUB pal.model2 ()
DECLARE SUB pal.model3 ()
DECLARE SUB pal.model4 ()
DECLARE SUB pal.model5 ()
DECLARE SUB pal.model6 ()
DECLARE SUB sew.model1 ()
DECLARE SUB sew.model2 ()
DECLARE SUB sew.model3 ()
DECLARE SUB sew.model4 ()
DECLARE SUB sew.model5 ()
DECLARE SUB sew.model6 ()
DECLARE SUB sew.model7 ()
DECLARE SUB sew.model8 ()
DECLARE SUB sew.model9 ()
DECLARE SUB sew.model10 ()
DECLARE SUB sew.model11 ()
DECLARE SUB sew.model12 ()
DECLARE SUB sew.model13 ()
DECLARE SUB sew.model14 ()
DECLARE SUB sew.model15 ()
DECLARE SUB mig.model1 ()
DECLARE SUB mig.model2 ()
DECLARE SUB mig.model3 ()
DECLARE SUB mig.model4 ()
DECLARE SUB ima.model1 ()
DECLARE SUB ima.model2 ()
DECLARE SUB ima.model3 ()
DECLARE SUB ima.model4 ()
DECLARE SUB ima.model5 ()
DECLARE SUB ima.model6 ()
DECLARE SUB ima.model7 ()
DECLARE SUB ima.model8 ()
DECLARE SUB ima.model9 ()
DECLARE SUB ima.model10 ()
DECLARE SUB ima.model11 ()
DECLARE SUB ima.model12 ()
DECLARE SUB ima.model13 ()
DECLARE SUB ima.model14 ()
DECLARE SUB ima.model15 ()
DECLARE SUB ima.model16 ()
DECLARE SUB ima.model17 ()
DECLARE SUB ima.model18 ()
DECLARE SUB ima.model19 ()
DECLARE SUB ima.model20 ()

DECLARE SUB support.setpalette ()
DECLARE SUB support.bentline1 (x1%, y1%, x2%, y2%, clr%)

'Declaring Keys
CONST backspc = 8, enter = 13, htab = 9, esc = 27
CONST left = 75, right = 77, up = 72, down = 80
CONST uplt = 71, uprt = 73, dnlt = 79, dnrt = 81
CONST insert = 82, home = 73, pageup = 71, del = 83, endk = 81, pagedn = 79
CONST kf1 = 59, kf2 = 60, kf3 = 61, kf4 = 62, kf5 = 63, kf6 = 64, kf7 = 65, kf8 = 66, kf9 = 67, kf10 = 68, kf11 = 133, kf12 = 134
'Keys declared

CONST pi = 22 / 7, pi2 = 2 * pi
CONST trig = 100000, trig2 = 360 / pi2


DIM sine!(359), cosine!(359), tangent!(359)
DIM sine&(359), cosine&(359)
DIM log1!(320), log2!(1009)
DIM Names$(55)
FOR i% = 0 TO 359
theta = (i% * pi) / 180
sine!(i%) = SIN(theta)
cosine!(i%) = COS(theta)
tangent!(i%) = TAN(theta)
sine&(i%) = sine!(i%) * trig
cosine&(i%) = cosine!(i%) * trig
NEXT
FOR i% = 1 TO 319
log1!(i%) = LOG(i%)
NEXT
FOR i% = 1 TO 1000
log2!(i%) = LOG(i% / 100)
NEXT
FOR i% = 0 TO UBOUND(Names$)
READ Names$(i%)
NEXT






SCREEN 13
HZDstart
DO
GOSUB men.menu
SELECT CASE Selection%
CASE 0
dsg.model1
CASE 1
dsg.model2
CASE 2
dsg.model3
CASE 3
dsg.model4
CASE 4
dsg.model5
CASE 5
dsg.model6
CASE 6
dsg.model7
CASE 7
dsg.model8
CASE 8
dsg.model9
CASE 9
dsg.model10
CASE 10
dsg.model11
CASE 11
ima.model1
CASE 12
ima.model2
CASE 13
ima.model3
CASE 14
ima.model4
CASE 15
ima.model5
CASE 16
ima.model6
CASE 17
ima.model7
CASE 18
ima.model8
CASE 19
ima.model9
CASE 20
ima.model10
CASE 21
ima.model11
CASE 22
ima.model12
CASE 23
ima.model13
CASE 24
ima.model14
CASE 25
ima.model15
CASE 26
ima.model16
CASE 27
ima.model17
CASE 28
ima.model18
CASE 29
ima.model19
CASE 30
ima.model20
CASE 31
mig.model1
CASE 32
mig.model2
CASE 33
mig.model3
CASE 34
mig.model4
CASE 35
pal.model1
CASE 36
pal.model2
CASE 37
pal.model3
CASE 38
pal.model4
CASE 39
pal.model5
CASE 40
pal.model6
CASE 41
sew.model1
CASE 42
sew.model2
CASE 43
sew.model3
CASE 44
sew.model4
CASE 45
sew.model5
CASE 46
sew.model6
CASE 47
sew.model7
CASE 48
sew.model8
CASE 49
sew.model9
CASE 50
sew.model10
CASE 51
sew.model11
CASE 52
sew.model12
CASE 53
sew.model13
CASE 54
sew.model14
CASE 55
sew.model15
CASE ELSE
END SELECT
LOOP


men.menu:
COLOR 64
HZDclearPage
HZDdisplayGraphics
support.setpalette
FOR i% = 0 TO 319 STEP 5
support.bentline1 i%, 40, i% * SIN(i% * .01), 40 + SIN(i% * .01) * 10, SIN(i% * .01) * 255
NEXT
HZDdisplayGraphics
PRINT "Random Colour Fun"
PRINT "================="
LINE (0, 70)-(319, 70), 1, B
LINE (0, 80)-(319, 80), 1, B
LOCATE 10, 1
PRINT Selection% + 1; " "; Names$(Selection%);
k$ = ""
DO UNTIL k$ = CHR$(enter) OR k$ = CHR$(esc)
        k$ = ""
        WHILE k$ = ""
        k$ = INKEY$
        WEND
SELECT CASE k$
CASE CHR$(0) + CHR$(left)
Selection% = Selection% - 1
IF (Selection% < 0) THEN Selection% = 55
LOCATE 10, 1
PRINT SPACE$(40);
LOCATE 10, 1
PRINT Selection% + 1; " "; Names$(Selection%)
CASE CHR$(0) + CHR$(right)
Selection% = Selection% + 1
IF (Selection% > 55) THEN Selection% = 0
LOCATE 10, 1
PRINT SPACE$(40);
LOCATE 10, 1
PRINT Selection% + 1; " "; Names$(Selection%)
CASE CHR$(esc)
CLS
PRINT "Wasn't that crazy?"
PRINT "I did it just for fun . . ."
PRINT "Hope you don't feel bad"
LOCATE 6, 1
PRINT "Tried by: Subhajit Sahu(GamerZ)"
PRINT "Mail: qbasic40@gmail.com"
PRINT "Please mail me."
k$ = INPUT$(1)
HZDstop
SYSTEM
CASE CHR$(enter)
LOCATE 10, 1
COLOR 15
PRINT Selection% + 1; " "; Names$(Selection%)
FOR i = -10000 TO 10000 STEP .005
NEXT
HZDclearPage
CASE ELSE
END SELECT
LOOP
CLS
RETURN





DATA "Farmland","Compression","Super Compression","Rise and Fall","Niagra","Colours From A Dashing Plane"
DATA "Colours From A Dashing Plane 2","A Fall","Far Away","Blurry Guy","Above"
DATA "Lost Gravity Dust","Bee Dust","Striking Dust Form Sediment","Heavy Particle Sedimentation","Raindrops Form Ice","Rain On A Window Pane"
DATA "Threads","Thread Fall","Sewed Wires","Drifting Wires","Drifting Wires 2","Octopus Flower","Circle Of Time"
DATA "Dripple","Spread","Throw","Festival","Sprinkle Wave","Crackers","Diffused Band"
DATA "Fan","Round","Ved Area","Energy"
DATA "Sudden Waves","Proceeding","Dust","Change","Mesh","Blocked"
DATA "Line Tunnel","Dancing Pipe","Dancing Pipe 2","Dancing Pipe 3","Dancing Pipe 4","Dancing Pipe 5"
DATA "Dancing Pipe 6","Dancing Pipe 7","Sometimes A Pyramid","Colour Area","Way","Want","Want 2","Pillars","Pillars 2"

SUB dsg.model1
SHARED sine!(), cosine!()
stp = 1
DO
k = k + stp
FOR i% = 0 TO 319
FOR j% = 0 TO 199
HZDpset i%, j%, SIN(i%) * COS(j%) * k
NEXT
NEXT
HZDdisplayGraphics
IF (k > 254) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB dsg.model10
SHARED sine!(), cosine!()
stp& = 2
DO
k& = k& + stp&
FOR i% = 1 TO 319
FOR j% = 1 TO 199
HZDpset i%, j%, i% * cosine!(k&) * sine!(k&) * cosine!(k&) + j% * sine!(k&)
NEXT
NEXT
HZDdisplayGraphics
HZDdisplayGraphics
IF (k& > 357 OR k& < 2) THEN stp& = -stp&
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB dsg.model11
SHARED cosine!()
stp = .1
DO
k = k + stp
FOR i% = 0 TO 319
FOR j% = 0 TO 199
ang% = k * trig2 MOD 360
HZDpset i%, j%, i% * cosine!(ang%) + j% * cosine!(ang%)
NEXT
NEXT
HZDdisplayGraphics
IF (k > 30 OR k < .1) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB dsg.model2
SHARED sine!()
stp = .1
DO
k = k + stp
FOR i% = 0 TO 319
FOR j% = 0 TO 199
HZDpset i%, j%, sine!(k * trig2 MOD 360) * i%
NEXT
NEXT
HZDdisplayGraphics
IF (k > 254) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB dsg.model3
SHARED log1!()
stp = .1
DO
k = k + stp
FOR i% = 1 TO 319
FOR j% = 1 TO 199
HZDpset i%, j%, log1!(i%) * k
NEXT
NEXT
HZDdisplayGraphics
IF (k > 40 OR k < .01) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB dsg.model4
SHARED sine!(), cosine!()
stp = .01
l = 254
DO
k = k + stp
l = l - stp
FOR i& = 0 TO 319
FOR j& = 0 TO 199
ang% = k * trig2 MOD 360
HZDpset i&, j&, sine!(ang%) * cosine!(ang%) * (i& * j& * .005)
NEXT
NEXT
HZDdisplayGraphics
IF (k > 254) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB dsg.model5
SHARED log1!()
stp = .1
DO
k = k + stp
FOR i% = 1 TO 319
FOR j% = 1 TO 199
HZDpset i%, j%, log1!(i%) * log1!(j%) * k
NEXT
NEXT
HZDdisplayGraphics
IF (k > 30 OR k < .01) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB dsg.model6
SHARED sine!(), cosine!()
stp = .1
DO
k = k + stp
FOR i% = 1 TO 319
FOR j% = 1 TO 199
ang% = k * trig2 MOD 360
HZDpset i%, j%, i% * cosine!(ang%) + j% * sine!(ang%)
NEXT
NEXT
HZDdisplayGraphics
IF (k > 30 OR k < .1) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB dsg.model7
SHARED sine!(), cosine!()
stp = .1
DO
k = k + stp
FOR i% = 1 TO 319
FOR j% = 1 TO 199
ang% = k * trig2 MOD 360
HZDpset i%, j%, i% * cosine!(ang%) - j% * sine!(ang%)
NEXT
NEXT
HZDdisplayGraphics
IF (k > 30 OR k < .1) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB dsg.model8
SHARED sine!(), cosine!()
stp = .1
DO
k = k + stp
FOR i% = 1 TO 319
FOR j% = 1 TO 199
ang% = k * trig2 MOD 360
HZDpset i%, j%, i% * cosine!(ang%) + j% * sine!(ang%) * cosine!(ang%)
NEXT
NEXT
HZDdisplayGraphics
IF (k > 30 OR k < .1) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB dsg.model9
SHARED sine!(), cosine!(), log2!()
logval3 = log2!(300)
stp = .1
DO
k = k + stp
FOR i% = 1 TO 319
FOR j% = 1 TO 199
ang% = k * trig2 MOD 360
logvalue = log2!(k * 33.33333) + logval3
HZDpset i%, j%, i% * cosine!(ang%) * logvalue + j% * sine!(ang%) * logvalue
NEXT
NEXT
HZDdisplayGraphics
IF (k > 30 OR k < .1) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB ima.model1
DIM parx%(200), pary%(200)
DO
FOR i% = 0 TO UBOUND(parx%)
HZDpset parx%(i%), pary%(i%), 0
parx%(i%) = parx%(i%) + RND(1) * 3 - 1
pary%(i%) = pary%(i%) + RND(1)
IF (parx%(i%) < 1 OR parx%(i%) > 319) THEN parx%(i%) = RND(1) * 319
IF (pary%(i%) < 1 OR pary%(i%) > 199) THEN pary%(i%) = 1
HZDpset parx%(i%), pary%(i%), 100
NEXT
HZDdisplayGraphics
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB ima.model10
SHARED sine!(), cosine!()
trig3 = .01 * trig2
DO
k% = (k% + 1) MOD 256
l% = (l% + 1) MOD 200
m% = (m% + 1) MOD 320
FOR i% = 0 TO 320 STEP 5
ang% = i% * trig3 MOD 360
support.bentline1 i%, 0, m% * cosine!(ang%), l% * cosine!(ang%), k% * sine!(ang%)
NEXT
FOR i% = 320 TO 0 STEP -5
ang% = i% * trig3 MOD 360
support.bentline1 i%, m% * sine!(ang%), 0, l% * sine!(ang%), 0
NEXT
FOR i% = 0 TO 320 STEP 5
ang% = i% * trig3 MOD 360
support.bentline1 i%, l% * cosine!(ang%), m% * cosine!(ang%), 0, k% * sine!(ang%)
NEXT
FOR i% = 320 TO 0 STEP -5
ang% = i% * trig3 MOD 360
support.bentline1 i%, l% * cosine!(ang%), 0, m% * SIN(ang%), 0
NEXT
HZDdisplayGraphics
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB ima.model11
SHARED sine!(), cosine!()
trig3 = .01 * trig2
DO
k% = (k% + 1) MOD 256
l% = (l% + 1) MOD 200
m% = (m% + 1) MOD 320
FOR i% = 0 TO 320 STEP 5
ang% = i% * trig3 MOD 360
support.bentline1 i%, 0, m% * cosine!(ang%), l% * cosine!(ang%), k% * sine!(ang%)
NEXT
FOR i% = 320 TO 0 STEP -5
ang% = i% * trig3 MOD 360
support.bentline1 i%, m% * sine!(ang%), 0, l% * sine!(ang%), k% * cosine!(ang%)
NEXT
FOR i% = 0 TO 320 STEP 5
ang% = i% * trig3 MOD 360
support.bentline1 i%, l% * cosine!(ang%), m% * cosine!(ang%), 0, 0
NEXT
FOR i% = 320 TO 0 STEP -5
ang% = i% * trig3 MOD 360
support.bentline1 i%, l% * sine!(ang%), 0, m% * sine!(ang%), 0
NEXT
HZDdisplayGraphics
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB ima.model12
SHARED sine!(), cosine!()
DO
r% = (r% + 1) MOD 100
FOR i = 0 TO 6.29 STEP .1
ang% = i * trig2 MOD 360
support.bentline1 150, 100, 150 + r% * cosine!(ang%), 100 + r% * sine!(ang%), 255 * sine!(ang%)
NEXT
FOR i = 0 TO 12.89 STEP .17
ang% = i * trig2 MOD 360
support.bentline1 150, 100, 150 + r% * cosine!(ang%), 100 + r% * sine!(ang%), 0
NEXT
HZDdisplayGraphics
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB ima.model13
SHARED sine!(), cosine!()
DO
r% = (r% + 11) MOD 100
FOR i = 0 TO 6.29 STEP .05
ang% = i * trig2 MOD 360
support.bentline1 150, 100, 150 + r% * cosine!(ang%), 100 + r% * sine!(ang%), 100 + 255 * i / 6.29
HZDdisplayGraphics
IF (INKEY$ <> "") THEN EXIT DO
NEXT
FOR i = 0 TO 6.29 STEP .05
ang% = i * trig2 MOD 360
support.bentline1 150, 100, 150 + r% * cosine!(ang%), 100 + r% * sine!(ang%), 0
HZDdisplayGraphics
IF (INKEY$ <> "") THEN EXIT DO
NEXT
HZDdisplayGraphics
LOOP
END SUB

SUB ima.model14
SHARED sine!(), cosine!()
RANDOMIZE TIMER
DO
r% = (r% + 11) MOD 100
FOR i = 0 TO 6.29 STEP .05
ang% = i * trig2 MOD 360
xpnt% = 150 + r% * cosine!(ang%)
ypnt% = 100 + r% * sine!(ang%)
HZDpset RND * 10 + xpnt%, RND * 10 + ypnt%, r% + 255 * sine!(ang%)
HZDpset RND + xpnt%, RND + ypnt%, 0
NEXT
HZDdisplayGraphics
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB ima.model15
SHARED sine!(), cosine!()
RANDOMIZE TIMER
DO
r% = (r% + 11) MOD 100
FOR i = 0 TO 6.29 STEP .05
ang% = i * trig2 MOD 360
road% = r% * trig2 MOD 360
sub1% = 150 + r% * (cosine!(ang%) - sine!(road%))
add1% = 100 + r% * (sine!(ang%) + cosine!(road%))
HZDpset RND(1) + sub1%, RND(2) + add1%, 255 * sine!(ang%)
HZDpset RND(1) + sub1%, RND(2) + add1%, 0
NEXT
HZDdisplayGraphics
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB ima.model16
SHARED sine!(), cosine!()
DO
r% = (r% + 1) MOD 100
k = k + .01
IF (k > 3000) THEN k = 0
FOR i = 0 TO 6.29 STEP .05
iang% = i * trig2 MOD 360
kang% = k * trig2 MOD 360
HZDpset 150 + r% * (cosine!(iang%) - cosine!(kang%)), 100 + r% * (sine!(iang%) + sine!(kang%)), 0' 255 * SIN(i)
HZDpset 150 + r% * (cosine!(iang%) - sine!(kang%)), 100 + r% * (sine!(iang%) + cosine!(kang%)), 255 * cosine!(iang%)
NEXT
HZDdisplayGraphics
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB ima.model17
SHARED sine!(), cosine!(), tangent!()
DO
r% = (r% + 1) MOD 50
k = k + .01
IF (k > 3000) THEN k = 0
FOR i = 0 TO 6.29 STEP .05
iang% = i * trig2 MOD 360
kang% = k * trig2 MOD 360
HZDpset 150 + r% * (tangent!(iang%) - tangent!(kang%)), 100 + r% * (tangent!(iang%) + tangent!(kang%)), 0
HZDpset 150 + r% * (cosine!(iang%) - tangent!(kang%)), 100 + r% * (sine!(iang%) + tangent!(kang%)), 255 * cosine!(iang%)
NEXT
HZDdisplayGraphics
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB ima.model18
SHARED sine!(), cosine!(), tangent!()
DO
c% = c% + 1
r% = (r% + 1) MOD 100
IF (c% = 2000) THEN
HZDclearPage
c% = 0
END IF
k = k + .01
IF (k > 3000) THEN k = 0
FOR i = 0 TO 6.29 STEP .05
iang% = i * trig2 MOD 360
kang% = k * trig2 MOD 360
x& = (150 + r% * (cosine!(iang%) - tangent!(kang%)) / 2)
y& = (50 + r% * (tangent!(iang%) - cosine!(kang%)) / 2)
IF (x& > 1000 OR x& < -1000) THEN x% = 1000 ELSE x% = x&
IF (y& > 1000 OR y& < -1000) THEN y% = 1000 ELSE y% = y&
HZDpset x%, y%, 255 * cosine!(iang%)
NEXT
HZDdisplayGraphics
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB ima.model19
SHARED sine!(), cosine!(), tangent!()
DO
c% = c% + 1
r% = (r% + 1) MOD 500
IF (c% = 2000) THEN
HZDclearPage
c% = 0
END IF
k = k + .01
IF (k > 3000) THEN k = 0
FOR i = 0 TO 6.29 STEP .05
iang% = i * trig2 MOD 360
kang% = k * trig2 MOD 360
x& = 150 + r% * (cosine!(iang%) - tangent!(kang%))
y& = 100 + r% * (sine!(iang%) + tangent!(kang%))
IF (x& > 1000 OR x& < -1000) THEN x% = 1000 ELSE x% = x&
IF (y& > 1000 OR y& < -1000) THEN y% = 1000 ELSE y% = y&
HZDpset x%, y%, 255 * sine!(iang%)
NEXT
HZDdisplayGraphics
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB ima.model2
DIM parx%(200), pary%(200)
DO
FOR i% = 0 TO UBOUND(parx%)
HZDpset parx%(i%), pary%(i%), 0
parx%(i%) = parx%(i%) + RND(1) * 3 - 2
pary%(i%) = pary%(i%) + RND(1) * 3 - 1
IF (parx%(i%) < 1 OR parx%(i%) > 319) THEN parx%(i%) = RND(1) * 319
IF (pary%(i%) < 1 OR pary%(i%) > 199) THEN pary%(i%) = 1
HZDpset parx%(i%), pary%(i%), 180
NEXT
HZDdisplayGraphics
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB ima.model20
SHARED sine!(), cosine!()
stp = .04
DO
k = k + stp
FOR i% = 0 TO 319
FOR j% = 0 TO 199
ang% = i% * .0001 * j% * trig2 MOD 360
HZDpset i% + RND(1), j% + RND(2), (sine!(ang%) + cosine!(ang%)) * k * 10
NEXT
NEXT
HZDdisplayGraphics
IF (k > 200) THEN k = 0
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB ima.model3
DIM parx%(200), pary%(200)
DO
FOR i% = 0 TO UBOUND(parx%)
a1% = parx%(i%)
a2% = pary%(i%)
parx%(i%) = parx%(i%) + RND(1) * 3 - 2
pary%(i%) = pary%(i%) + RND(1) * 3 - 1
IF (parx%(i%) < 1 OR parx%(i%) > 319) THEN parx%(i%) = RND(1) * 319
IF (pary%(i%) < 1 OR pary%(i%) > 199) THEN pary%(i%) = 1
IF (HZDpoint(parx%(i%), pary%(i%)) = 0) THEN HZDpset a1%, a2%, 0
HZDpset parx%(i%), pary%(i%), 64
HZDpset parx%(i%) - 1, pary%(i%), 0
HZDpset parx%(i%) + 1, pary%(i%), 0
HZDpset parx%(i%), pary%(i%) - 1, 0
HZDpset parx%(i%), pary%(i%) + 1, 0
NEXT
HZDdisplayGraphics
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB ima.model4
DIM parx%(200), pary%(200)
DO
FOR i% = 0 TO UBOUND(parx%)
a1% = parx%(i%)
a2% = pary%(i%)
parx%(i%) = parx%(i%) + RND(1) * 3 - 2
pary%(i%) = pary%(i%) + RND(1) * 3 - 1
IF (parx%(i%) < 1 OR parx%(i%) > 319) THEN parx%(i%) = RND(1) * 319
IF (pary%(i%) < 1 OR pary%(i%) > 199) THEN pary%(i%) = 1
IF (HZDpoint(parx%(i%), pary%(i%)) = 0) THEN HZDpset a1%, a2%, 0
PSET (parx%(i%), pary%(i%)), 125
NEXT
HZDdisplayGraphics
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB ima.model5
DIM parx%(200), pary%(200)
RANDOMIZE TIMER
FOR i% = 0 TO UBOUND(parx%)
parx%(i%) = 319 * RND
NEXT
DO
FOR i% = 0 TO UBOUND(parx%)
a1% = parx%(i%)
a2% = pary%(i%)
HZDpset parx%(i%), pary%(i%), 0
pary%(i%) = pary%(i%) + RND(1) * 4 - 1
a% = HZDpoint(parx%(i%), pary%(i%))
HZDpset parx%(i%), pary%(i%), 199
IF (a% = 199 OR a% = -1) THEN
parx%(i%) = 319 * RND
pary%(i%) = 0
HZDpset a1%, a2%, 214
END IF
NEXT
IF (INKEY$ <> "") THEN EXIT DO
HZDdisplayGraphics
LOOP
END SUB

SUB ima.model6
DIM parx%(200), pary%(200)
DO
FOR i% = 0 TO UBOUND(parx%)
a1% = parx%(i%)
a2% = pary%(i%)
parx%(i%) = parx%(i%) + RND(1) * 3 - 2
pary%(i%) = pary%(i%) + RND(1) * 4 - 1
IF (HZDpoint(parx%(i%), pary%(i%)) <> 0) THEN
IF (HZDpoint(parx%(i%), pary%(i%) + 1) <> 0) THEN
parx%(i%) = RND(1) * 320
pary%(i%) = RND(1) * 1000
HZDpset parx%(i%), pary%(i%), 121
END IF
ELSE
HZDpset a1%, a2%, 0
END IF
HZDpset parx%(i%), pary%(i%), 121
NEXT
HZDdisplayGraphics
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB ima.model7
SHARED sine!(), cosine!()
DO
k% = (k% + 1) MOD 256
FOR i% = 0 TO 320 STEP 5
ang% = i% * .01 * trig2 MOD 360
support.bentline1 i%, 0, 319, 199, k% * sine!(ang%)
NEXT
FOR i% = 320 TO 0 STEP -5
ang% = i% * .01 * trig2 MOD 360
support.bentline1 i%, 0, 0, 199, k% * cosine!(ang%)
NEXT
FOR i% = 0 TO 320 STEP 5
ang% = i% * .01 * trig2 MOD 360
support.bentline1 i%, 199, 319, 0, k% * sine!(ang%)
NEXT
FOR i% = 320 TO 0 STEP -5
ang% = i% * .01 * trig2 MOD 360
support.bentline1 i%, 199, 0, 0, k% * cosine!(ang%)
NEXT
HZDdisplayGraphics
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB ima.model8
SHARED sine!(), cosine!()
DO
k% = (k% + 1) MOD 256
l% = (l% + 1) MOD 200
FOR i% = 0 TO 320 STEP 5
ang% = i% * .01 * trig2 MOD 360
support.bentline1 i%, 0, 319, l% * cosine!(ang%), k% * sine!(ang%)
NEXT
FOR i% = 320 TO 0 STEP -5
ang% = i% * .01 * trig2 MOD 360
support.bentline1 i%, 0, 0, l% * sine!(ang%), k% * cosine!(ang%)
NEXT
FOR i% = 0 TO 320 STEP 5
ang% = i% * .01 * trig2 MOD 360
support.bentline1 i%, l% * cosine!(ang%), 319, 0, k% * sine!(ang%)
NEXT
FOR i% = 320 TO 0 STEP -5
ang% = i% * .01 * trig2 MOD 360
support.bentline1 i%, l% * sine!(ang%), 0, 0, k% * cosine!(ang%)
NEXT
HZDdisplayGraphics
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB ima.model9
SHARED sine!(), cosine!()
DO
k% = (k% + 1) MOD 256
l% = (l% + 1) MOD 200
m% = (m% + 1) MOD 320
FOR i% = 0 TO 320 STEP 5
ang% = i% * .01 * trig2 MOD 360
support.bentline1 i%, 0, m% * cosine!(ang%), l% * cosine!(ang%), k% * sine!(ang%)
NEXT
FOR i% = 320 TO 0 STEP -5
ang% = i% * .01 * trig2 MOD 360
support.bentline1 i%, m% * sine!(ang%), 0, l% * sine!(ang%), k% * cosine!(ang%)
NEXT
FOR i% = 0 TO 320 STEP 5
ang% = i% * .01 * trig2 MOD 360
support.bentline1 i%, l% * cosine!(ang%), m% * cosine!(ang%), 0, k% * sine!(ang%)
NEXT
FOR i% = 320 TO 0 STEP -5
ang% = i% * .01 * trig2 MOD 360
support.bentline1 i%, l% * sine!(ang%), 0, m% * sine!(ang%), k% * cosine!(ang%)
NEXT
HZDdisplayGraphics
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB mig.model1
stp = .01
k = .1
DO
k = k + stp
FOR i& = 0 TO 319
support.bentline1 1, 100, 1 + i& * SIN(k + 1), 100 + i& * SIN(k) * COS(k), SIN(k) * i&
NEXT
HZDdisplayGraphics
IF (k > 3 OR k < -1) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB mig.model2
stp = .05
k = .1
DO
k = k + stp
FOR i& = 0 TO 319
support.bentline1 150, 100, 150 + i& * SIN(k), 100 + i& * COS(k), COS(k) * i&
NEXT
HZDdisplayGraphics
IF (k > 100 OR k < -100) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB mig.model3
stp = .05
k = .1
DO
k = k + stp
FOR i& = 0 TO 319
support.bentline1 150, 100, 150 + i& * SIN(k), 100 + i& * SIN(k) * COS(k), SIN(k) * i&
NEXT
HZDdisplayGraphics
IF (k > 100 OR k < .105) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB mig.model4
stp = .01
k = .1
DO
k = k + stp
FOR i& = 0 TO 319
support.bentline1 150, 100, 150 + i& * SIN(k), 100 + i& * COS(k) * LOG(k), LOG(k) * COS(k) * i&
NEXT
HZDdisplayGraphics
IF (k > 100 OR k < .101) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB pal.model1
stp = .1
k = k + stp
FOR i& = 0 TO 319
FOR j& = 0 TO 199
HZDpset i&, j&, CINT(SIN(k) * COS(k) * (i& * j& * .005))
NEXT
NEXT
HZDdisplayGraphics
k = 0
stp% = 1
DO
k = k + stp!
WAIT &H3DA, 8
OUT &H3C8, cl%
OUT &H3C9, CINT(SIN(k) * 63)
OUT &H3C9, CINT(COS(k) * 63)
OUT &H3C9, CINT(LOG(k) * 63)
cl% = cl% + stp%
IF (cl% > 254 OR cl% < 1) THEN stp% = -stp%
IF (k > 30 OR k < .1) THEN stp! = -stp!
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB pal.model2
stp = .1
k! = k! + stp!
FOR i& = 0 TO 319
FOR j& = 0 TO 199
HZDpset i&, j&, CINT(SIN(k!) * COS(k!) * (i& * j& * .005) * LOG(k!))
NEXT
NEXT
k% = 1
stp% = 1
DO
HZDdisplayGraphics
FOR cl% = 0 TO 255
k% = k% + stp%
OUT &H3C8, cl%
OUT &H3C9, CINT(SIN(k%) * 63)
OUT &H3C9, CINT(COS(k%) * 63)
OUT &H3C9, CINT(LOG(k%) * 63)
IF (k% > 300 OR k% < 2) THEN stp% = -stp%
NEXT
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB pal.model3
RANDOMIZE TIMER
stp! = .23
k = k + stp!
FOR i& = 0 TO 319
FOR j& = 0 TO 199
HZDpset i&, j&, SIN(k) * COS(k) * (i& * j& * .005) * RND
NEXT
NEXT
k = 0
stp% = 1
DO
k = k + stp!
HZDdisplayGraphics
OUT &H3C8, cl%
OUT &H3C9, SIN(k) * 63
OUT &H3C9, COS(k) * 63
OUT &H3C9, LOG(k) * 63
cl% = cl% + stp%
IF (cl% > 254 OR cl% < 1) THEN stp% = -stp%
IF (k > 300 OR k < .1) THEN stp! = -stp!
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB pal.model4
stp = .1
k = k + stp
FOR i& = 0 TO 319
FOR j& = 0 TO 199
HZDpset CINT(i&), CINT(j&), CINT(SIN(k) * COS(k) * (i& * j& * .005) * EXP(SQR(k)) * LOG(k * k))
NEXT
NEXT
k = 0
stp% = 1
DO
k = k + stp!
HZDdisplayGraphics
OUT &H3C8, cl%
OUT &H3C9, CINT(SIN(k) * 63)
OUT &H3C9, CINT(COS(k) * 63)
OUT &H3C9, CINT(LOG(k) * 63)
cl% = cl% + stp%
IF (cl% > 254 OR cl% < 1) THEN stp% = -stp%
IF (k > 30 OR k < .1) THEN stp! = -stp!
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB pal.model5
stp = .1
k = k + stp
FOR i& = 0 TO 319
FOR j& = 0 TO 199
HZDpset CINT(i&), CINT(j&), CINT(RND(1) * ((i& * j&) / 100))
NEXT
NEXT
k = 0
stp% = 1
DO
k = k + stp!
HZDdisplayGraphics
OUT &H3C8, cl%
OUT &H3C9, CINT(SIN(k) * 63)
OUT &H3C9, CINT(COS(k) * 63)
OUT &H3C9, CINT(LOG(k) * 63)
cl% = cl% + stp%
IF (cl% > 254 OR cl% < 1) THEN stp% = -stp%
IF (k > 30 OR k < .1) THEN stp! = -stp!
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB pal.model6
stp = .1
k = k + stp
FOR i& = 0 TO 319
FOR j& = 0 TO 199
HZDpset CINT(i&), CINT(j&), CINT(INT(.5 + RND(1)) * i&)
NEXT
NEXT
k = 0
stp% = 1
DO
k = k + stp!
HZDdisplayGraphics
OUT &H3C8, cl%
OUT &H3C9, CINT(SIN(k) * 63)
OUT &H3C9, CINT(COS(k) * 63)
OUT &H3C9, CINT(LOG(k) * 63)
cl% = cl% + stp%
IF (cl% > 254 OR cl% < 1) THEN stp% = -stp%
IF (k > 30 OR k < .1) THEN stp! = -stp!
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB sew.model1
stp = 1
k = 1
DO
k = k + stp
FOR i& = 0 TO 319
FOR j& = 98 TO 102
LINE -(SIN(i&) * k, COS(j&) * k * .705), LOG(i& + 1) * k
NEXT
NEXT
IF (k > 320 OR k < 2) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB sew.model10
SHARED sine!(), cosine!()
stp = .1
k = .1
DO
k = k + stp
FOR i& = 0 TO 319
ang% = k * trig2 MOD 360
HZDpset 150 + i& * cosine!(ang%), 100 + i& * sine!(ang%) * cosine!(ang%), ABS(cosine!(ang%) * i&)
HZDpset 150 + i& * sine!(ang%), 100 + i& * cosine!(ang%), ABS(cosine!(ang%) * i&)
NEXT
HZDdisplayGraphics
IF (k > 300 OR k < .2) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB sew.model11
stp = .1
k = .1
DO
k = k + stp
FOR i& = 0 TO 319
HZDpset 150 + i& * COS(k), 100 + i& * SIN(k), ABS(COS(k) * i&)
HZDpset 150 + i& * SIN(k), 100 + i& * COS(k), ABS(COS(k) * i&)
NEXT
HZDdisplayGraphics
IF (k > 300 OR k < .2) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB sew.model12
stp = .5
k = .1
DO
k = k + stp
FOR i& = 0 TO 319
HZDpset 150 + i& * COS(k) * LOG(k + 1), 100 + i& * SIN(k) * LOG(k + 1), ABS(COS(k) * i&)
HZDpset 150 + i& * SIN(k), 100 + i& * COS(k), ABS(COS(k) * i&)
NEXT
HZDdisplayGraphics
IF (k > 3000 OR k < .5) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB sew.model13
stp = 5
k = .1
DO
k = k + stp
FOR i& = 0 TO 319
HZDpset 150 + i& * COS(k) * LOG(k + 1), 100 + i& * SIN(k) * LOG(k + 1), ABS(COS(k) * i&)
HZDpset 150 + i& * SIN(k), 100 + i& * COS(k), ABS(COS(k) * i&)
NEXT
HZDdisplayGraphics
IF (k > 3000 OR k < .5) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB sew.model14
stp = .1
k = .1
DO
k = k + stp
FOR i& = 0 TO 319
x& = 150 + i& * COS(k) - TAN(k + 1) * i&
y& = 100 + i& * SIN(k) - TAN(k + 1) * i&
IF (x& > 1000 OR x& < -1000) THEN x% = 1000 ELSE x% = x&
IF (y& > 1000 OR y& < -1000) THEN y% = 1000 ELSE y% = y&
HZDpset x%, y%, ABS(COS(k) * i&)
HZDpset 150 + i& * SIN(k) + COS(k) * i&, 100 + i& * COS(k) + SIN(k) * i&, ABS(COS(k) * i&)
NEXT
HZDdisplayGraphics
IF (k > 30 OR k < .2) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB sew.model15
stp = .1
k = .1
DO
k = k + stp
FOR i& = 0 TO 319
x& = 150 + -TAN(k + 1) * i&
y& = 100 + -TAN(k + 1) * i&
IF (x& > 1000 OR x& < -1000) THEN x% = 1000 ELSE x% = x&
IF (y& > 1000 OR y& < -1000) THEN y% = 1000 ELSE y% = y&
HZDpset x%, y%, ABS(COS(k) * i&)
HZDpset 150 + i& * SIN(k) + COS(k) * SIN(k) * i&, 100 + i& * COS(k) + SIN(k) * COS(k) * i&, ABS(COS(k) * i&)
NEXT
HZDdisplayGraphics
IF (k > 30 OR k < .2) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB sew.model2
stp = .1
k = .1
DO
k = k + stp
FOR i& = 0 TO 319
CIRCLE (i&, i& * LOG(k + 1)), ABS(COS(k) * i&), ABS(SIN(k) * COS(k) * i&)
NEXT
IF (k > 30 OR k < .2) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB sew.model3
stp = .1
k = .1
DO
k = k + stp
FOR i& = 0 TO 319
CIRCLE (i&, 100 + i& * SIN(k + 1)), ABS(COS(k) * i&), ABS(SIN(k) * COS(k) * i&)
NEXT
IF (k > 30 OR k < .2) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB sew.model4
stp = .1
k = .1
DO
k = k + stp
FOR i& = 0 TO 319
CIRCLE (i&, 100 + i& * SIN(k) * COS(k)), ABS(COS(k) * i&), ABS(SIN(k) * COS(k) * i&)
NEXT
IF (k > 30 OR k < .2) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB sew.model5
stp = .1
k = .1
DO
k = k + stp
FOR i& = 0 TO 319
CIRCLE (150 + i& * SIN(k), 100 + i& * SIN(k) * COS(k)), ABS(COS(k) * i&), ABS(SIN(k) * COS(k) * i&)
NEXT
IF (k > 30 OR k < .2) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB sew.model6
stp = .1
k = .1
DO
k = k + stp
FOR i& = 0 TO 319
CIRCLE (150 + i& * SIN(k) * COS(k), 100 + i& * SIN(k) * COS(k)), ABS(COS(k) * i&), ABS(SIN(k) * COS(k) * i&)
NEXT
IF (k > 30 OR k < .2) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB sew.model7
stp = .1
k = .1
DO
k = k + stp
FOR i& = 0 TO 319
CIRCLE (15 + i& * LOG(k + 1), 100 + i& * SIN(k) * COS(k)), ABS(COS(k) * i&), ABS(SIN(k) * COS(k) * i&)
NEXT
IF (k > 30 OR k < .2) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB sew.model8
stp = .1
k = .1
DO
k = k + stp
FOR i& = 0 TO 319
CIRCLE (15 + i& * LOG(k + 1), 100 + i& * SIN(k) * COS(k)), ABS(COS(k) * i&), ABS(SIN(k) * COS(k) * i&)
LINE -(15 + i& * SIN(k) * COS(k), 100 + i& * COS(k) * LOG(k + 1)), (COS(k) * i&)
NEXT
IF (k > 30 OR k < .2) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB sew.model9
stp = .1
k = .1
DO
k = k + stp
FOR i& = 0 TO 319
PSET (150 + i& * COS(k), 100 + i& * SIN(k) * COS(k)), ABS(COS(k) * i&)
LINE -(150 + i& * SIN(k), 100 + i& * COS(k)), ABS(COS(k) * i&)
NEXT
IF (k > 30 OR k < .2) THEN stp = -stp
IF (INKEY$ <> "") THEN EXIT DO
LOOP
END SUB

SUB support.bentline1 (x1%, y1%, x2%, y2%, clr%)
SHARED cosine!()
IF (x2% - x1% <> 0) THEN
y! = (y2% - y1%) / (x2% - x1%)
cosstep! = -((11 / 7) / (x2% - x1%))
cs! = 11 / 7
FOR i% = x1% TO x2% STEP SGN(x2% - x1%)
HZDpset i%, y1% + cosine!(cs! * trig2 MOD 360) * yy!, clr%
cs! = cs! + cosstep!
yy! = yy! + y!
NEXT
ELSEIF (y2% - y1% <> 0) THEN
y! = (x2% - x1%) / (y2% - y1%)
cosstep! = -((11 / 7) / (y2% - y1%))
cs! = 11 / 7
FOR i% = y1% TO y2% STEP SGN(y2% - y1%)
HZDpset x1% + cosine!(cs! * trig2 MOD 360) * yy!, i%, clr%
cs! = cs! + cosstep!
yy! = yy! + y!
NEXT
ELSE
HZDpset x1%, y1%, clr%
END IF
END SUB

SUB support.setpalette
reduc1 = .025
reduc2 = 1.4
FOR i% = 0 TO 255
OUT &H3C8, i%
r% = 63 * (EXP(-ABS(i% - 196) * reduc1) ^ reduc2)
g% = 63 * (EXP(-ABS(i% - 128) * reduc1) ^ reduc2)
b% = 63 * (EXP(-ABS(i% - 64) * reduc1) ^ reduc2)
OUT &H3C9, r%
OUT &H3C9, g%
OUT &H3C9, b%
NEXT
END SUB

