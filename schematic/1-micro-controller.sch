v 20130925 2
C 40000 40000 0 0 0 title-B.sym
C 41500 42900 1 0 0 mega48-tqfp32.sym
{
T 46000 49400 5 10 1 1 0 6 1
refdes=U101
T 41800 49700 5 10 0 0 0 0 1
device=ATMega48-TQFP32
T 41800 49900 5 10 0 0 0 0 1
footprint=TQFP32_7
T 41100 49700 5 10 1 0 0 0 1
comment=ATMega48/88/168
}
C 37300 50400 1 0 0 input-2.sym
{
T 37300 50600 5 10 1 1 0 0 1
net=VCC5V:1
T 37900 51100 5 10 0 0 0 0 1
device=none
T 37800 50500 5 10 0 1 0 7 1
value=INPUT
}
C 43800 42300 1 0 0 gnd-1.sym
C 47300 35900 1 0 0 gnd-1.sym
C 47300 42600 1 270 0 input-2.sym
{
T 47500 42600 5 10 1 1 270 0 1
net=VCC5V:1
T 48000 42000 5 10 0 0 270 0 1
device=none
T 47400 42100 5 10 0 1 270 7 1
value=INPUT
}
N 38700 50500 48300 50500 4
N 43700 50500 43700 49600 4
N 44100 50500 44100 49600 4
C 47300 40800 1 270 0 resistor-2.sym
{
T 47650 40400 5 10 0 0 270 0 1
device=RESISTOR
T 47600 40600 5 10 1 1 270 0 1
refdes=R101
T 47300 40800 5 10 1 1 0 0 1
value=10k
T 47300 40800 5 10 0 0 0 0 1
footprint=0805xs
}
C 47200 37300 1 270 0 capacitor-1.sym
{
T 47900 37100 5 10 0 0 270 0 1
device=CAPACITOR
T 47700 37100 5 10 1 1 270 0 1
refdes=C101
T 48100 37100 5 10 0 0 270 0 1
symversion=0.1
T 47200 37300 5 10 1 1 0 0 1
value=100u
T 47200 37300 5 10 0 0 0 0 1
footprint=0805xs
}
N 47400 41200 47400 40800 4
N 47400 36400 47400 36200 4
N 47400 38700 46400 38700 4
N 46300 43700 46500 43700 4
C 38900 46800 1 270 0 crystal-1.sym
{
T 39400 46600 5 10 0 0 270 0 1
device=CRYSTAL
T 39200 46600 5 10 1 1 270 0 1
refdes=U102
T 39600 46600 5 10 0 0 270 0 1
symversion=0.1
T 38900 46800 5 10 1 1 0 0 1
value=20MHz
T 38900 46800 5 10 0 0 0 0 1
footprint=crystal
}
C 37800 46800 1 0 0 capacitor-1.sym
{
T 38000 47500 5 10 0 0 0 0 1
device=CAPACITOR
T 38000 47300 5 10 1 1 0 0 1
refdes=C102
T 38000 47700 5 10 0 0 0 0 1
symversion=0.1
T 37800 46800 5 10 1 1 0 0 1
value=22p
T 37800 46800 5 10 0 0 0 0 1
footprint=0805xs
}
C 37900 45700 1 0 0 capacitor-1.sym
{
T 38100 46400 5 10 0 0 0 0 1
device=CAPACITOR
T 38100 46200 5 10 1 1 0 0 1
refdes=C103
T 38100 46600 5 10 0 0 0 0 1
symversion=0.1
T 37900 45700 5 10 1 1 0 0 1
value=22p
T 37900 45700 5 10 0 0 0 0 1
footprint=0805xs
}
C 37500 45300 1 0 0 gnd-1.sym
N 38700 47000 41500 47000 4
N 39000 47000 39000 46800 4
N 39000 46100 39000 45900 4
N 38800 45900 39800 45900 4
N 37800 47000 37600 47000 4
N 37600 47000 37600 45600 4
N 37900 45900 37600 45900 4
N 41500 46700 39800 46700 4
N 39800 46700 39800 45900 4
C 49200 46400 1 0 0 gnd-1.sym
C 49100 47900 1 270 0 capacitor-1.sym
{
T 49800 47700 5 10 0 0 270 0 1
device=CAPACITOR
T 49600 47700 5 10 1 1 270 0 1
refdes=C104
T 50000 47700 5 10 0 0 270 0 1
symversion=0.1
T 49100 47900 5 10 1 1 0 0 1
value=100n
T 49100 47900 5 10 0 0 0 0 1
footprint=0805xs
}
C 48200 49900 1 270 0 inductor-1.sym
{
T 48700 49700 5 10 0 0 270 0 1
device=INDUCTOR
T 48500 49700 5 10 1 1 270 0 1
refdes=L101
T 48900 49700 5 10 0 0 270 0 1
symversion=0.1
T 48200 49900 5 10 1 1 0 0 1
value=120u
T 48200 49900 5 10 0 0 0 0 1
footprint=IND_SSR1208
}
C 48100 47900 1 270 0 capacitor-1.sym
{
T 48800 47700 5 10 0 0 270 0 1
device=CAPACITOR
T 48600 47700 5 10 1 1 270 0 1
refdes=C105
T 49000 47700 5 10 0 0 270 0 1
symversion=0.1
T 48100 47900 5 10 1 1 0 0 1
value=100n
T 48100 47900 5 10 0 0 0 0 1
footprint=0805xs
}
N 46300 48500 49300 48500 4
N 49300 46700 49300 47000 4
N 48300 47900 48300 49000 4
N 46300 48200 48300 48200 4
N 48300 49900 48300 50500 4
N 46300 47900 46500 47900 4
C 48200 46400 1 0 0 gnd-1.sym
C 46400 47600 1 0 0 gnd-1.sym
N 48300 46700 48300 47000 4
N 49300 48500 49300 47900 4
C 34100 38100 1 0 0 AVR_ISP6-1.sym
{
T 35200 39300 5 10 1 1 0 6 1
refdes=J101
T 34400 39550 5 10 0 0 0 0 1
device=HEADER6
T 34400 39750 5 10 0 0 0 0 1
footprint=CONNECTOR_PLSR_FLAT 2 3
}
C 35500 38000 1 0 0 gnd-1.sym
N 35500 38400 35600 38400 4
N 35600 38400 35600 38300 4
C 46500 46900 1 0 0 io-1.sym
{
T 47400 47100 5 10 1 1 0 0 1
net=A6:1
T 46700 47500 5 10 0 0 0 0 1
device=none
T 47400 47000 5 10 0 1 0 1 1
value=IO
}
C 46500 46600 1 0 0 io-1.sym
{
T 47400 46800 5 10 1 1 0 0 1
net=A7:1
T 46700 47200 5 10 0 0 0 0 1
device=none
T 47400 46700 5 10 0 1 0 1 1
value=IO
}
C 46500 45400 1 0 0 io-1.sym
{
T 47400 45600 5 10 1 1 0 0 1
net=A0:1
T 46700 46000 5 10 0 0 0 0 1
device=none
T 47400 45500 5 10 0 1 0 1 1
value=IO
}
C 46500 45100 1 0 0 io-1.sym
{
T 47400 45300 5 10 1 1 0 0 1
net=A1:1
T 46700 45700 5 10 0 0 0 0 1
device=none
T 47400 45200 5 10 0 1 0 1 1
value=IO
}
C 46500 44800 1 0 0 io-1.sym
{
T 47400 45000 5 10 1 1 0 0 1
net=A2:1
T 46700 45400 5 10 0 0 0 0 1
device=none
T 47400 44900 5 10 0 1 0 1 1
value=IO
}
C 46500 44500 1 0 0 io-1.sym
{
T 47400 44700 5 10 1 1 0 0 1
net=A3:1
T 46700 45100 5 10 0 0 0 0 1
device=none
T 47400 44600 5 10 0 1 0 1 1
value=IO
}
C 46500 44200 1 0 0 io-1.sym
{
T 47400 44400 5 10 1 1 0 0 1
net=A4:1
T 46700 44800 5 10 0 0 0 0 1
device=none
T 47400 44300 5 10 0 1 0 1 1
value=IO
}
C 46500 43900 1 0 0 io-1.sym
{
T 47400 44100 5 10 1 1 0 0 1
net=A5:1
T 46700 44500 5 10 0 0 0 0 1
device=none
T 47400 44000 5 10 0 1 0 1 1
value=IO
}
C 46500 43600 1 0 0 io-1.sym
{
T 47400 43800 5 10 1 1 0 0 1
net=RST:1
T 46700 44200 5 10 0 0 0 0 1
device=none
T 47400 43700 5 10 0 1 0 1 1
value=IO
}
C 41300 48700 1 0 1 io-1.sym
{
T 40400 48900 5 10 1 1 0 6 1
net=B0:1
T 41100 49300 5 10 0 0 0 6 1
device=none
T 40400 48800 5 10 0 1 0 7 1
value=IO
}
C 41300 48400 1 0 1 io-1.sym
{
T 40400 48600 5 10 1 1 0 6 1
net=B1:1
T 41100 49000 5 10 0 0 0 6 1
device=none
T 40400 48500 5 10 0 1 0 7 1
value=IO
}
C 41300 48100 1 0 1 io-1.sym
{
T 40400 48300 5 10 1 1 0 6 1
net=B2:1
T 41100 48700 5 10 0 0 0 6 1
device=none
T 40400 48200 5 10 0 1 0 7 1
value=IO
}
C 41300 45700 1 0 1 io-1.sym
{
T 40400 45900 5 10 1 1 0 6 1
net=RXI:1
T 41100 46300 5 10 0 0 0 6 1
device=none
T 40400 45800 5 10 0 1 0 7 1
value=IO
}
C 41300 45400 1 0 1 io-1.sym
{
T 40400 45600 5 10 1 1 0 6 1
net=TXO:1
T 41100 46000 5 10 0 0 0 6 1
device=none
T 40400 45500 5 10 0 1 0 7 1
value=IO
}
C 41300 45100 1 0 1 io-1.sym
{
T 40400 45300 5 10 1 1 0 6 1
net=D2:1
T 41100 45700 5 10 0 0 0 6 1
device=none
T 40400 45200 5 10 0 1 0 7 1
value=IO
}
C 41300 44800 1 0 1 io-1.sym
{
T 40400 45000 5 10 1 1 0 6 1
net=D3:1
T 41100 45400 5 10 0 0 0 6 1
device=none
T 40400 44900 5 10 0 1 0 7 1
value=IO
}
C 41300 44500 1 0 1 io-1.sym
{
T 40400 44700 5 10 1 1 0 6 1
net=D4:1
T 41100 45100 5 10 0 0 0 6 1
device=none
T 40400 44600 5 10 0 1 0 7 1
value=IO
}
C 41300 44200 1 0 1 io-1.sym
{
T 40400 44400 5 10 1 1 0 6 1
net=D5:1
T 41100 44800 5 10 0 0 0 6 1
device=none
T 40400 44300 5 10 0 1 0 7 1
value=IO
}
C 41300 43900 1 0 1 io-1.sym
{
T 40400 44100 5 10 1 1 0 6 1
net=D6:1
T 41100 44500 5 10 0 0 0 6 1
device=none
T 40400 44000 5 10 0 1 0 7 1
value=IO
}
C 41300 43600 1 0 1 io-1.sym
{
T 40400 43800 5 10 1 1 0 6 1
net=D7:1
T 41100 44200 5 10 0 0 0 6 1
device=none
T 40400 43700 5 10 0 1 0 7 1
value=IO
}
N 46500 45500 46300 45500 4
N 46500 45200 46300 45200 4
N 46500 44900 46300 44900 4
N 46500 46700 46300 46700 4
N 46500 47000 46300 47000 4
N 41300 48800 41500 48800 4
N 41300 48500 41500 48500 4
N 41300 48200 41500 48200 4
N 41300 45800 41500 45800 4
N 41300 45500 41500 45500 4
N 41300 45200 41500 45200 4
N 41300 44900 41500 44900 4
N 41300 44600 41500 44600 4
N 41300 44300 41500 44300 4
N 41300 44000 41500 44000 4
N 41300 43700 41500 43700 4
N 46300 44600 46500 44600 4
N 46300 44300 46500 44300 4
N 46300 44000 46500 44000 4
C 44900 39300 1 0 1 io-1.sym
{
T 44000 39500 5 10 1 1 0 6 1
net=DTR:1
T 44700 39900 5 10 0 0 0 6 1
device=none
T 44000 39400 5 10 0 1 0 7 1
value=IO
}
C 46000 39200 1 0 1 capacitor-1.sym
{
T 45800 39900 5 10 0 0 0 6 1
device=CAPACITOR
T 45800 39700 5 10 1 1 0 6 1
refdes=C106
T 45800 40100 5 10 0 0 0 6 1
symversion=0.1
T 46000 39200 5 10 1 1 0 6 1
value=0.1u
T 46000 39200 5 10 0 0 0 0 1
footprint=0805xs
}
C 41700 37300 1 0 1 connector6-1.sym
{
T 39900 39100 5 10 0 0 0 6 1
device=CONNECTOR_6
T 41600 39300 5 10 1 1 0 6 1
refdes=CONN101
T 41700 37400 5 15 1 1 0 0 6
comment=DTR
RXI
TXO
VCC
CTS
GND
T 41700 37300 5 10 0 0 0 0 1
footprint=CONNECTOR_FLAT 1 6
}
C 39700 38900 1 0 1 io-1.sym
{
T 38800 39100 5 10 1 1 0 6 1
net=DTR:1
T 39500 39500 5 10 0 0 0 6 1
device=none
T 38800 39000 5 10 0 1 0 7 1
value=IO
}
N 39700 39000 40000 39000 4
C 39600 37200 1 0 0 gnd-1.sym
C 39300 37500 1 0 0 gnd-1.sym
N 40000 37500 39700 37500 4
N 40000 37800 39400 37800 4
N 39700 38100 40000 38100 4
C 39700 38600 1 0 1 io-1.sym
{
T 38800 38800 5 10 1 1 0 6 1
net=TXO:1
T 39500 39200 5 10 0 0 0 6 1
device=none
T 38800 38700 5 10 0 1 0 7 1
value=IO
}
C 39700 38300 1 0 1 io-1.sym
{
T 38800 38500 5 10 1 1 0 6 1
net=RXI:1
T 39500 38900 5 10 0 0 0 6 1
device=none
T 38800 38400 5 10 0 1 0 7 1
value=IO
}
N 39700 38700 40000 38700 4
N 40000 38400 39700 38400 4
C 35700 38600 1 0 0 io-1.sym
{
T 36600 38800 5 10 1 1 0 0 1
net=MOSI:1
T 35900 39200 5 10 0 0 0 0 1
device=none
T 36600 38700 5 10 0 1 0 1 1
value=IO
}
C 33900 38900 1 0 1 io-1.sym
{
T 33000 39100 5 10 1 1 0 6 1
net=MISO:1
T 33700 39500 5 10 0 0 0 6 1
device=none
T 33000 39000 5 10 0 1 0 7 1
value=IO
}
C 33900 38600 1 0 1 io-1.sym
{
T 33000 38800 5 10 1 1 0 6 1
net=SCK:1
T 33700 39200 5 10 0 0 0 6 1
device=none
T 33000 38700 5 10 0 1 0 7 1
value=IO
}
C 33900 38300 1 0 1 io-1.sym
{
T 33000 38500 5 10 1 1 0 6 1
net=RST:1
T 33700 38900 5 10 0 0 0 6 1
device=none
T 33000 38400 5 10 0 1 0 7 1
value=IO
}
N 34100 39000 33900 39000 4
N 33900 38700 34100 38700 4
N 33900 38400 34100 38400 4
N 35500 38700 35700 38700 4
N 35500 39000 35700 39000 4
C 41300 47500 1 0 1 io-1.sym
{
T 40400 47700 5 10 1 1 0 6 1
net=MISO:1
T 41100 48100 5 10 0 0 0 6 1
device=none
T 40400 47600 5 10 0 1 0 7 1
value=IO
}
C 41300 47200 1 0 1 io-1.sym
{
T 40400 47400 5 10 1 1 0 6 1
net=SCK:1
T 41100 47800 5 10 0 0 0 6 1
device=none
T 40400 47300 5 10 0 1 0 7 1
value=IO
}
C 41300 47800 1 0 1 io-1.sym
{
T 40400 48000 5 10 1 1 0 6 1
net=MOSI:1
T 41100 48400 5 10 0 0 0 6 1
device=none
T 40400 47900 5 10 0 1 0 7 1
value=IO
}
C 47700 39600 1 0 0 io-1.sym
{
T 48600 39800 5 10 1 1 0 0 1
net=RST:1
T 47900 40200 5 10 0 0 0 0 1
device=none
T 48600 39700 5 10 0 1 0 1 1
value=IO
}
N 44900 39400 45100 39400 4
N 46000 39400 47400 39400 4
N 46400 38000 46400 38700 4
N 47700 39700 47400 39700 4
N 46400 36300 46400 36800 4
N 46400 36300 47400 36300 4
N 41300 47900 41500 47900 4
N 41300 47600 41500 47600 4
N 41300 47300 41500 47300 4
N 47400 38500 47400 39900 4
C 47300 37500 1 0 0 jumper-1.sym
{
T 47600 38000 5 8 0 0 0 0 1
device=JUMPER
T 47600 38000 5 10 1 1 0 0 1
refdes=J102
T 47300 37500 5 10 0 0 0 0 1
footprint=CONNECTOR 1 2
}
N 47400 37500 47400 37300 4
N 43700 42900 43700 42800 4
N 43700 42800 44100 42800 4
N 43900 42600 43900 42800 4
N 44100 42900 44100 42800 4
N 46600 38000 46600 38200 4
N 46600 38200 46400 38200 4
N 46600 36800 46600 36600 4
N 46600 36600 46400 36600 4
C 56900 46000 1 0 0 io-1.sym
{
T 57100 46600 5 10 0 0 0 0 1
device=none
T 57800 46100 5 10 0 1 0 1 1
value=IO
T 57800 46200 5 10 1 1 0 0 1
net=A0:1
}
C 56900 45700 1 0 0 io-1.sym
{
T 57100 46300 5 10 0 0 0 0 1
device=none
T 57800 45800 5 10 0 1 0 1 1
value=IO
T 57800 45900 5 10 1 1 0 0 1
net=A1:1
}
C 56900 45400 1 0 0 io-1.sym
{
T 57100 46000 5 10 0 0 0 0 1
device=none
T 57800 45500 5 10 0 1 0 1 1
value=IO
T 57800 45600 5 10 1 1 0 0 1
net=A2:1
}
C 56900 45100 1 0 0 io-1.sym
{
T 57100 45700 5 10 0 0 0 0 1
device=none
T 57800 45200 5 10 0 1 0 1 1
value=IO
T 57800 45300 5 10 1 1 0 0 1
net=A3:1
}
C 56900 44800 1 0 0 io-1.sym
{
T 57100 45400 5 10 0 0 0 0 1
device=none
T 57800 44900 5 10 0 1 0 1 1
value=IO
T 57800 45000 5 10 1 1 0 0 1
net=A4:1
}
C 56900 44500 1 0 0 io-1.sym
{
T 57100 45100 5 10 0 0 0 0 1
device=none
T 57800 44600 5 10 0 1 0 1 1
value=IO
T 57800 44700 5 10 1 1 0 0 1
net=A5:1
}
C 56900 44200 1 0 0 io-1.sym
{
T 57100 44800 5 10 0 0 0 0 1
device=none
T 57800 44300 5 10 0 1 0 1 1
value=IO
T 57800 44400 5 10 1 1 0 0 1
net=A6:1
}
C 56900 43900 1 0 0 io-1.sym
{
T 57100 44500 5 10 0 0 0 0 1
device=none
T 57800 44000 5 10 0 1 0 1 1
value=IO
T 57800 44100 5 10 1 1 0 0 1
net=A7:1
}
C 52500 49000 1 0 1 io-1.sym
{
T 52300 49600 5 10 0 0 0 6 1
device=none
T 51600 49100 5 10 0 1 0 7 1
value=IO
T 51600 49200 5 10 1 1 0 6 1
net=B0:1
}
C 52500 48700 1 0 1 io-1.sym
{
T 52300 49300 5 10 0 0 0 6 1
device=none
T 51600 48800 5 10 0 1 0 7 1
value=IO
T 51600 48900 5 10 1 1 0 6 1
net=B1:1
}
C 52500 48400 1 0 1 io-1.sym
{
T 52300 49000 5 10 0 0 0 6 1
device=none
T 51600 48500 5 10 0 1 0 7 1
value=IO
T 51600 48600 5 10 1 1 0 6 1
net=B2:1
}
C 52500 47800 1 0 1 io-1.sym
{
T 52300 48400 5 10 0 0 0 6 1
device=none
T 51600 47900 5 10 0 1 0 7 1
value=IO
T 51600 48000 5 10 1 1 0 6 1
net=MISO:1
}
C 52500 47500 1 0 1 io-1.sym
{
T 52300 48100 5 10 0 0 0 6 1
device=none
T 51600 47600 5 10 0 1 0 7 1
value=IO
T 51600 47700 5 10 1 1 0 6 1
net=SCK:1
}
C 52500 48100 1 0 1 io-1.sym
{
T 52300 48700 5 10 0 0 0 6 1
device=none
T 51600 48200 5 10 0 1 0 7 1
value=IO
T 51600 48300 5 10 1 1 0 6 1
net=MOSI:1
}
C 52500 46000 1 0 1 io-1.sym
{
T 52300 46600 5 10 0 0 0 6 1
device=none
T 51600 46100 5 10 0 1 0 7 1
value=IO
T 51600 46200 5 10 1 1 0 6 1
net=RXI:1
}
C 52500 45700 1 0 1 io-1.sym
{
T 52300 46300 5 10 0 0 0 6 1
device=none
T 51600 45800 5 10 0 1 0 7 1
value=IO
T 51600 45900 5 10 1 1 0 6 1
net=TXO:1
}
C 52500 45400 1 0 1 io-1.sym
{
T 52300 46000 5 10 0 0 0 6 1
device=none
T 51600 45500 5 10 0 1 0 7 1
value=IO
T 51600 45600 5 10 1 1 0 6 1
net=D2:1
}
C 52500 45100 1 0 1 io-1.sym
{
T 52300 45700 5 10 0 0 0 6 1
device=none
T 51600 45200 5 10 0 1 0 7 1
value=IO
T 51600 45300 5 10 1 1 0 6 1
net=D3:1
}
C 52500 44800 1 0 1 io-1.sym
{
T 52300 45400 5 10 0 0 0 6 1
device=none
T 51600 44900 5 10 0 1 0 7 1
value=IO
T 51600 45000 5 10 1 1 0 6 1
net=D4:1
}
C 52500 44500 1 0 1 io-1.sym
{
T 52300 45100 5 10 0 0 0 6 1
device=none
T 51600 44600 5 10 0 1 0 7 1
value=IO
T 51600 44700 5 10 1 1 0 6 1
net=D5:1
}
C 52500 44200 1 0 1 io-1.sym
{
T 52300 44800 5 10 0 0 0 6 1
device=none
T 51600 44300 5 10 0 1 0 7 1
value=IO
T 51600 44400 5 10 1 1 0 6 1
net=D6:1
}
C 52500 43900 1 0 1 io-1.sym
{
T 52300 44500 5 10 0 0 0 6 1
device=none
T 51600 44000 5 10 0 1 0 7 1
value=IO
T 51600 44100 5 10 1 1 0 6 1
net=D7:1
}
C 54400 47400 1 0 1 connector6-1.sym
{
T 52600 49200 5 10 0 0 0 6 1
device=CONNECTOR_6
T 54300 49400 5 10 1 1 0 6 1
refdes=CONN102
T 54400 47400 5 10 0 0 0 0 1
footprint=CONNECTOR_FLAT 1 6
}
C 55000 43800 1 0 0 connector8-1.sym
{
T 55100 47000 5 10 0 0 0 0 1
device=CONNECTOR_8
T 55100 46400 5 10 1 1 0 0 1
refdes=CONN103
T 55000 43800 5 10 0 0 0 0 1
footprint=CONNECTOR_FLAT 1 8
}
C 54500 43800 1 0 1 connector8-1.sym
{
T 54400 47000 5 10 0 0 0 6 1
device=CONNECTOR_8
T 54400 46400 5 10 1 1 0 6 1
refdes=CONN104
T 54500 43800 5 10 0 0 0 0 1
footprint=CONNECTOR_FLAT 1 8
}
C 55700 47100 1 0 0 connector8-1.sym
{
T 55800 50300 5 10 0 0 0 0 1
device=CONNECTOR_8
T 55800 49700 5 10 1 1 0 0 1
refdes=CONN105
T 55700 47100 5 10 0 0 0 0 1
footprint=CONNECTOR 4 2
}
N 52500 49100 52700 49100 4
N 52500 48800 52700 48800 4
N 52500 48500 52700 48500 4
N 52500 48200 52700 48200 4
N 52500 47900 52700 47900 4
N 52500 47600 52700 47600 4
N 52500 46100 52800 46100 4
N 52500 45800 52800 45800 4
N 52500 45500 52800 45500 4
N 52500 45200 52800 45200 4
N 52500 44900 52800 44900 4
N 52500 44600 52800 44600 4
N 52500 44300 52800 44300 4
N 52500 44000 52800 44000 4
N 56700 46100 56900 46100 4
N 56700 45800 56900 45800 4
N 56700 45500 56900 45500 4
N 56700 45200 56900 45200 4
N 56700 44900 56900 44900 4
N 56700 44600 56900 44600 4
N 56700 44300 56900 44300 4
N 56700 44000 56900 44000 4
C 60900 48100 1 0 1 input-2.sym
{
T 60900 48300 5 10 1 1 0 6 1
net=VCC5V:1
T 60300 48800 5 10 0 0 0 6 1
device=none
T 60400 48200 5 10 0 1 0 1 1
value=INPUT
}
C 57900 47500 1 90 0 gnd-1.sym
N 57400 47300 59100 47300 4
N 59100 49100 59100 47300 4
N 59100 48200 59500 48200 4
N 57400 49100 59100 49100 4
N 57400 48500 59100 48500 4
N 57400 47900 59100 47900 4
C 57900 48100 1 90 0 gnd-1.sym
C 57900 48700 1 90 0 gnd-1.sym
C 57900 49300 1 90 0 gnd-1.sym
N 57400 49400 57600 49400 4
N 57400 48800 57600 48800 4
N 57400 48200 57600 48200 4
N 57400 47600 57600 47600 4
C 46600 50300 1 270 0 capacitor-1.sym
{
T 47300 50100 5 10 0 0 270 0 1
device=CAPACITOR
T 47100 50100 5 10 1 1 270 0 1
refdes=C107
T 47500 50100 5 10 0 0 270 0 1
symversion=0.1
T 46600 50300 5 10 0 0 0 0 1
footprint=0805xs
T 46600 50300 5 10 0 0 0 0 1
value=1u
}
C 47400 50300 1 270 0 capacitor-2.sym
{
T 48100 50100 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 47900 50100 5 10 1 1 270 0 1
refdes=C108
T 48300 50100 5 10 0 0 270 0 1
symversion=0.1
T 47400 50300 5 10 0 0 0 0 1
footprint=TANT_B
T 47400 50300 5 10 1 1 0 0 1
value=47u
}
C 47100 48800 1 0 0 gnd-1.sym
N 46800 49400 46800 49300 4
N 46200 49300 47600 49300 4
N 47600 49300 47600 49400 4
N 47200 49100 47200 49300 4
N 46800 50300 46800 50500 4
N 47600 50300 47600 50500 4
C 46000 50300 1 270 0 capacitor-1.sym
{
T 46700 50100 5 10 0 0 270 0 1
device=CAPACITOR
T 46500 50100 5 10 1 1 270 0 1
refdes=C109
T 46900 50100 5 10 0 0 270 0 1
symversion=0.1
T 46000 50300 5 10 0 0 0 0 1
footprint=0805xs
T 46000 50300 5 10 0 0 0 0 1
value=0.1u
}
N 46200 49400 46200 49300 4
N 46200 50300 46200 50500 4
C 42900 39300 1 270 0 input-2.sym
{
T 43100 39300 5 10 1 1 270 0 1
net=VCC5V:1
T 43600 38700 5 10 0 0 270 0 1
device=none
T 43000 38800 5 10 0 1 270 7 1
value=INPUT
}
C 42900 35000 1 0 0 gnd-1.sym
C 42900 37600 1 270 0 resistor-2.sym
{
T 43250 37200 5 10 0 0 270 0 1
device=RESISTOR
T 43200 37400 5 10 1 1 270 0 1
refdes=R102
T 42900 37600 5 10 0 1 0 0 1
footprint=0805xs
T 42900 37600 5 10 1 1 0 0 1
value=1k
}
C 43200 35600 1 90 0 led-3.sym
{
T 42550 36550 5 10 0 0 90 0 1
device=LED
T 42650 36050 5 10 1 1 90 0 1
refdes=D101
T 43200 35600 5 10 0 1 0 0 1
footprint=0805xs
}
N 43000 36700 43000 36500 4
N 43000 37900 43000 37600 4
N 43000 35600 43000 35300 4
C 46600 36800 1 90 0 Schurter_LSH1301xx-1.sym
{
T 46100 38000 5 10 1 1 90 6 1
refdes=S101
T 44500 36800 5 10 0 0 90 0 1
device=LSH1301xx
T 44700 36800 5 10 0 0 90 0 1
footprint=TYCO_fsm2j
}
C 51600 42200 1 0 1 io-1.sym
{
T 51400 42800 5 10 0 0 0 6 1
device=none
T 50700 42300 5 10 0 1 0 7 1
value=IO
T 50700 42400 5 10 1 1 0 6 1
net=A4:1
}
C 51600 41900 1 0 1 io-1.sym
{
T 51400 42500 5 10 0 0 0 6 1
device=none
T 50700 42000 5 10 0 1 0 7 1
value=IO
T 50700 42100 5 10 1 1 0 6 1
net=A5:1
}
N 52400 42300 51600 42300 4
N 51600 42000 52400 42000 4
C 54100 41800 1 0 1 connector4-1.sym
{
T 52300 42700 5 10 0 0 0 6 1
device=CONNECTOR_4
T 54100 41800 5 10 0 0 0 0 1
footprint=CONNECTOR_FLAT 1 4
T 54100 43200 5 10 1 1 0 6 1
refdes=CONN106
T 54100 41800 5 10 1 1 0 0 7
description=GND

VCC

SDA

SCL
}
C 51600 43000 1 270 0 gnd-1.sym
N 52400 42900 51900 42900 4
N 51600 42600 52400 42600 4
C 39400 53600 1 90 0 MOSFET_P-1.sym
{
T 38300 54250 5 10 1 1 90 6 1
refdes=Q101
T 37150 53600 5 10 0 0 90 0 1
device=MOSFET P-Channel
T 37800 54300 5 10 1 0 0 0 1
footprint=IRLML6302
}
C 39000 52900 1 0 0 gnd-1.sym
N 39100 53600 39100 53200 4
N 38200 54300 37000 54300 4
C 35600 54200 1 0 0 input-2.sym
{
T 36200 54900 5 10 0 0 0 0 1
device=none
T 36100 54300 5 10 0 1 0 7 1
value=INPUT
T 35600 54400 5 10 1 1 0 0 1
net=VCC_IN5V:1
}
C 41400 54200 1 0 1 input-2.sym
{
T 41400 54400 5 10 1 1 0 6 1
net=VCC5V:1
T 40800 54900 5 10 0 0 0 6 1
device=none
T 40900 54300 5 10 0 1 0 1 1
value=INPUT
}
N 39400 54300 40000 54300 4
C 38300 38000 1 0 0 input-2.sym
{
T 38900 38700 5 10 0 0 0 0 1
device=none
T 38800 38100 5 10 0 1 0 7 1
value=INPUT
T 38300 38200 5 10 1 1 0 0 1
net=VCC_IN5V:1
}
C 37100 38900 1 0 1 input-2.sym
{
T 36500 39600 5 10 0 0 0 6 1
device=none
T 36600 39000 5 10 0 1 0 1 1
value=INPUT
T 37100 39100 5 10 1 1 0 6 1
net=VCC_IN5V:1
}
C 50200 42500 1 0 0 input-2.sym
{
T 50800 43200 5 10 0 0 0 0 1
device=none
T 50700 42600 5 10 0 1 0 7 1
value=INPUT
T 50200 42700 5 10 1 1 0 0 1
net=VCC_IN5V:1
}
C 38100 35900 1 0 0 terminal-1.sym
{
T 38410 36650 5 10 0 0 0 0 1
device=terminal
T 38410 36500 5 10 0 0 0 0 1
footprint=M4_plated
T 38350 35950 5 10 1 1 0 6 1
refdes=T101
}
C 38100 35400 1 0 0 terminal-1.sym
{
T 38410 36150 5 10 0 0 0 0 1
device=terminal
T 38410 36000 5 10 0 0 0 0 1
footprint=M4_plated
T 38350 35450 5 10 1 1 0 6 1
refdes=T102
}
C 38100 34900 1 0 0 terminal-1.sym
{
T 38410 35650 5 10 0 0 0 0 1
device=terminal
T 38410 35500 5 10 0 0 0 0 1
footprint=M4_plated
T 38350 34950 5 10 1 1 0 6 1
refdes=T103
}
C 38100 34400 1 0 0 terminal-1.sym
{
T 38410 35150 5 10 0 0 0 0 1
device=terminal
T 38410 35000 5 10 0 0 0 0 1
footprint=M4_plated
T 38350 34450 5 10 1 1 0 6 1
refdes=T104
}
C 39400 33700 1 0 0 gnd-1.sym
N 39000 36000 39500 36000 4
N 39500 36000 39500 34000 4
N 39000 35500 39500 35500 4
N 39000 35000 39500 35000 4
N 39000 34500 39500 34500 4