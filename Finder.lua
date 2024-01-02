gg.setVisible(false)
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("9,187,343,237,679,939,583;17,179,869,188:75", gg.TYPE_QWORD)
gg.refineNumber("17,179,869,188", gg.TYPE_QWORD)
valueMTG = gg.getResults(10)
gg.clearResults()
libMTG = gg.getRangesList("libUE4.so")[1].start
offsetaddressMTG =  valueMTG[1].address - 4
tolibMTG =  offsetaddressMTG - libMTG
hexoffsetMTG = string.format("%x", tolibMTG)
print("GNames Offset : 0x"..hexoffsetMTG..") + 0x88);")


gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("4,294,967,296;4,294,967,297;4,467,289,492,813,774,849;6,208", gg.TYPE_QWORD)
gg.refineNumber("4,467,289,492,813,774,849;6,208", gg.TYPE_QWORD)
valueMTG = gg.getResults(1)
gg.clearResults()
libMTG = gg.getRangesList("libUE4.so")[1].start
offsetaddressMTG =  valueMTG[1].address +44
tolibMTG =  offsetaddressMTG - libMTG
hexoffsetMTG = string.format("%x", tolibMTG)

fromMTG = valueMTG[1].address;
toMTG = fromMTG + 60;

gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("720", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, fromMTG, toMTG, 0)
MTGOFFSETpointer = gg.getResults(1)
gg.clearResults()
gnamepntr = string.format("%x",MTGOFFSETpointer[1].address - offsetaddressMTG + 44)

if MTGOFFSETpointer[1].address > fromMTG then
isnegative = 0;
else
isnegative = 1;
end

if isnegative == 0 then
print("GWorld Offset : 0x"..hexoffsetMTG..") + 0x"..gnamepntr..");")
else
print("GWorld Offset : 0x"..hexoffsetMTG..") - 0x"..gnamepntr..");")
end

gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("70,368,744,177,664;4,806,466,702,311,161,856", gg.TYPE_QWORD)
gg.refineNumber("70,368,744,177,664", gg.TYPE_QWORD)
valueMTG = gg.getResults(1)
gg.clearResults()
libMTG = gg.getRangesList("libUE4.so")[1].start
offsetaddressMTG =  valueMTG[1].address +40
tolibMTG =  offsetaddressMTG - libMTG
hexoffsetMTG = string.format("%x", tolibMTG)

fromMTG = valueMTG[1].address;
toMTG = fromMTG + 500;

gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("-2.08692608e38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, fromMTG, toMTG, 0)
MTGOFFSETpointer = gg.getResults(1)
gg.clearResults()
gnamepntr = string.format("%x",MTGOFFSETpointer[1].address - offsetaddressMTG)

if MTGOFFSETpointer[1].address > fromMTG then
isnegative = 0;
else
isnegative = 1;
end

if isnegative == 0 then
print("VMatrix Offset : 0x"..hexoffsetMTG..") + 0x"..gnamepntr..");")
else
print("VMatrix Offset : 0x"..hexoffsetMTG..") - 0x"..gnamepntr..");")
end

print("")

gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-2,121,846,228,383,871,504;-1,900,796,789,527,674,846", gg.TYPE_QWORD)
gg.refineNumber("-2,121,846,228,383,871,504", gg.TYPE_QWORD)
valueMTG = gg.getResults(1)
gg.clearResults()
libMTG = gg.getRangesList("libUE4.so")[1].start
offsetaddressMTG =  valueMTG[1].address - libMTG
hexoffsetMTG = string.format("%x", offsetaddressMTG)
print("GNames_Offset : 0x"..hexoffsetMTG.."")

gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("60.0;30.0;5.0;30.0;200.0;64.0;1", gg.TYPE_FLOAT)
gg.refineNumber("1", gg.TYPE_FLOAT)
valueMTG = gg.getResults(1)
gg.clearResults()
libMTG = gg.getRangesList("libUE4.so")[1].start
offsetaddressMTG =  valueMTG[1].address - libMTG + 4
hexoffsetMTG = string.format("%x", offsetaddressMTG)
print("GEngine_Offset : 0x"..hexoffsetMTG.." ")

gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("450,000", gg.TYPE_DWORD)
--gg.refineNumber("70,368,744,177,664", gg.TYPE_QWORD)
valueMTG = gg.getResults(1)
gg.clearResults()
libMTG = gg.getRangesList("libUE4.so")[1].start
offsetaddressMTG =  valueMTG[1].address - libMTG - 20
hexoffsetMTG = string.format("%x", offsetaddressMTG)
print("GUObject_Offset : 0x"..hexoffsetMTG.."")

gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1,513,207,482,441,224,179;-2,121,846,297,103,348,720", gg.TYPE_QWORD)
gg.refineNumber("-2,121,846,297,103,348,720", gg.TYPE_QWORD)
valueMTG = gg.getResults(1)
gg.clearResults()
libMTG = gg.getRangesList("libUE4.so")[1].start
offsetaddressMTG =  valueMTG[1].address - libMTG
hexoffsetMTG = string.format("%x", offsetaddressMTG)
print("GetActorArray_Offset : 0x"..hexoffsetMTG.."")

gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("8,589,934,592;2;70,368,744,177,664;70,368,744,194,048;4,294,983,680;17,592,186,044,417;8,589,938,688", gg.TYPE_QWORD)
valueMTG = gg.getResults(1)
gg.clearResults()
libMTG = gg.getRangesList("libUE4.so")[1].start
offsetaddressMTG =  valueMTG[1].address - libMTG -8
offsetaddressMTG =  valueMTG[1].address - libMTG - 0xc
hexoffsetMTG = string.format("%x", offsetaddressMTG)
print("GNativeAndroidApp_Offset : 0x"..hexoffsetMTG.."")