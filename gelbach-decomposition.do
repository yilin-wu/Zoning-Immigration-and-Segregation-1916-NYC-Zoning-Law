****************************************************************
*Computing Gelbach Decomposition coefficient
*************************************************************


*import and adjust

use "/Users/elyn/Desktop/Dissertation/Zoning Laws and Labor Market Inequality/Data In Use/poli.dta"
destring, replace

global geo water emp emp2 emp3 emp4 stadis stadis2 stadis3 stadis4 stations
global boroNM brooklyn island bronx

* non manhattan

preserve
drop if manhattan==1

local controls lTotPop $geo $boroNM

b1x2 FAR, x1all(lAvFI `controls') x2all(ownerosh Bshare immigshare) x2delta(g1 =ownerosh :g2=Bshare:g3=immigshare) x1only(lAvFI)
b1x2 FAR, x1all(Bshare `controls') x2all(ownerosh lAvFI immigshare) x2delta(g1 =ownerosh :g2=lAvFI:g3=immigshare) x1only(Bshare)
b1x2 FAR, x1all(immigshare `controls') x2all(ownerosh lAvFI Bshare) x2delta(g1 =ownerosh :g2=lAvFI:g3=Bshare) x1only(immigshare)
b1x2 FAR, x1all(ownerosh `controls') x2all(immigshare lAvFI Bshare) x2delta(g1 =immigshare :g2=lAvFI:g3=Bshare) x1only(ownerosh)
restore

*manhattan
preserve
drop if manhattan==0
local controls lTotPop $geo
b1x2 FAR, x1all(lAvFI `controls') x2all(ownerosh Bshare immigshare) x2delta(g1 =ownerosh :g2=Bshare:g3=immigshare) x1only(lAvFI)
b1x2 FAR, x1all(Bshare `controls') x2all(ownerosh lAvFI immigshare) x2delta(g1 =ownerosh :g2=lAvFI:g3=immigshare) x1only(Bshare)
b1x2 FAR, x1all(immigshare `controls') x2all(ownerosh lAvFI Bshare) x2delta(g1 =ownerosh :g2=lAvFI:g3=Bshare) x1only(immigshare)
b1x2 FAR, x1all(ownerosh `controls') x2all(immigshare lAvFI Bshare) x2delta(g1 =immigshare :g2=lAvFI:g3=Bshare) x1only(ownerosh)
restore

*brooklyn
preserve
drop if brooklyn==0
local controls lTotPop $geo
b1x2 FAR, x1all(lAvFI `controls') x2all(ownerosh Bshare immigshare) x2delta(g1 =ownerosh :g2=Bshare:g3=immigshare) x1only(lAvFI)
b1x2 FAR, x1all(Bshare `controls') x2all(ownerosh lAvFI immigshare) x2delta(g1 =ownerosh :g2=lAvFI:g3=immigshare) x1only(Bshare)
b1x2 FAR, x1all(immigshare `controls') x2all(ownerosh lAvFI Bshare) x2delta(g1 =ownerosh :g2=lAvFI:g3=Bshare) x1only(immigshare)
b1x2 FAR, x1all(ownerosh `controls') x2all(immigshare lAvFI Bshare) x2delta(g1 =immigshare :g2=lAvFI:g3=Bshare) x1only(ownerosh)
restore

*queens
preserve
drop if queens==0
local controls lTotPop $geo
b1x2 FAR, x1all(lAvFI `controls') x2all(ownerosh Bshare immigshare) x2delta(g1 =ownerosh :g2=Bshare:g3=immigshare) x1only(lAvFI)
b1x2 FAR, x1all(Bshare `controls') x2all(ownerosh lAvFI immigshare) x2delta(g1 =ownerosh :g2=lAvFI:g3=immigshare) x1only(Bshare)
b1x2 FAR, x1all(immigshare `controls') x2all(ownerosh lAvFI Bshare) x2delta(g1 =ownerosh :g2=lAvFI:g3=Bshare) x1only(immigshare)
b1x2 FAR, x1all(ownerosh `controls') x2all(immigshare lAvFI Bshare) x2delta(g1 =immigshare :g2=lAvFI:g3=Bshare) x1only(ownerosh)
restore

*bronx
preserve
drop if bronx==0
local controls lTotPop $geo
b1x2 FAR, x1all(lAvFI `controls') x2all(ownerosh Bshare immigshare) x2delta(g1 =ownerosh :g2=Bshare:g3=immigshare) x1only(lAvFI)
b1x2 FAR, x1all(Bshare `controls') x2all(ownerosh lAvFI immigshare) x2delta(g1 =ownerosh :g2=lAvFI:g3=immigshare) x1only(Bshare)
b1x2 FAR, x1all(immigshare `controls') x2all(ownerosh lAvFI Bshare) x2delta(g1 =ownerosh :g2=lAvFI:g3=Bshare) x1only(immigshare)
b1x2 FAR, x1all(ownerosh `controls') x2all(immigshare lAvFI Bshare) x2delta(g1 =immigshare :g2=lAvFI:g3=Bshare) x1only(ownerosh)
restore


*staten island
preserve
drop if island ==0
local controls lTotPop $geo
b1x2 FAR, x1all(lAvFI `controls') x2all(ownerosh Bshare immigshare) x2delta(g1 =ownerosh :g2=Bshare:g3=immigshare) x1only(lAvFI)
b1x2 FAR, x1all(Bshare `controls') x2all(ownerosh lAvFI immigshare) x2delta(g1 =ownerosh :g2=lAvFI:g3=immigshare) x1only(Bshare)
b1x2 FAR, x1all(immigshare `controls') x2all(ownerosh lAvFI Bshare) x2delta(g1 =ownerosh :g2=lAvFI:g3=Bshare) x1only(immigshare)
b1x2 FAR, x1all(ownerosh `controls') x2all(immigshare lAvFI Bshare) x2delta(g1 =immigshare :g2=lAvFI:g3=Bshare) x1only(ownerosh)
restore











