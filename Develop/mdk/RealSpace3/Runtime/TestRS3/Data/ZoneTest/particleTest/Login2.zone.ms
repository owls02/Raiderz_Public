global strCurrentFilePath = getFilenamePath ( getSourceFileName() )
fileIn ( strCurrentFilePath + "../../../Dev/MAIETExporters/zone.ms" )

/*
*/

-- ���� ����Ʈ -----------------------------------------------------------
ImportTerrain "E:/work/SoulHunt/Game/RunTime/Data/Zone/particleTest/Login2_dis.dds" "E:/work/SoulHunt/Game/RunTime/Data/Zone/particleTest/_baked.bmp" 60000.000 60000.000

-- Actor ����Ʈ ----------------------------------------------------------
maxfile = getFilesRecursive pathXRefSearch "ingen_waterfall.max"
bSuccess = XRefMAXFile maxfile
if(bSuccess) then (
	newNodes = selection
	tm = (matrix3 [1.000,0.000,0.000] [0.000,1.000,0.000] [0.000,0.000,1.000] [21452.148,18126.469,1248.770] 	)
	for t in newNodes do (
		if(t.parent == undefined) then (t.transform = t.transform * tm) 
	)
)
maxfile = getFilesRecursive pathXRefSearch "sandstorm.max"
bSuccess = XRefMAXFile maxfile
if(bSuccess) then (
	newNodes = selection
	tm = (matrix3 [1.000,0.000,0.000] [0.000,1.000,0.000] [0.000,0.000,1.000] [20804.891,17810.133,1222.075] 	)
	for t in newNodes do (
		if(t.parent == undefined) then (t.transform = t.transform * tm) 
	)
)
maxfile = getFilesRecursive pathXRefSearch "teress_windmill_b.max"
bSuccess = XRefMAXFile maxfile
if(bSuccess) then (
	newNodes = selection
	tm = (matrix3 [1.000,0.000,0.000] [0.000,1.000,0.000] [0.000,0.000,1.000] [21428.010,18058.178,1209.984] 	)
	for t in newNodes do (
		if(t.parent == undefined) then (t.transform = t.transform * tm) 
	)
)

-- SpeedTree ����Ʈ ------------------------------------------------------

-- Directional light ����Ʈ ----------------------------------------------
c = TargetDirectionallight pos:[0,0,0] target:(targetObject pos:[0.585,0.450,-0.675])
c.overShoot = true

-- ���� �޽��� ��� ; �ּ� ó�� ���� ������-------------------------------
displayNotExistSpeedFiles()

