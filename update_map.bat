@echo off
echo Copying areas.json for all worlds...

if exist "D:\mcSG\plugins\Pl3xMarkers\world\areas.json" (
    copy /Y "D:\mcSG\plugins\Pl3xMarkers\world\areas.json" "D:\mcSG\plugins\Pl3xMap\web\tiles\world\areas.json"
)
if exist "D:\mcSG\plugins\Pl3xMarkers\world_nether\areas.json" (
    copy /Y "D:\mcSG\plugins\Pl3xMarkers\world_nether\areas.json" "D:\mcSG\plugins\Pl3xMap\web\tiles\world_nether\areas.json"
)
if exist "D:\mcSG\plugins\Pl3xMarkers\world_the_end\areas.json" (
    copy /Y "D:\mcSG\plugins\Pl3xMarkers\world_the_end\areas.json" "D:\mcSG\plugins\Pl3xMap\web\tiles\world_the_end\areas.json"
)

echo Changing directory to web folder...
cd /d "D:\mcSG\plugins\Pl3xMap\web"

echo Adding files to git...
git add .

echo Creating commit...
git commit -m "Initial Pl3xMap upload"

echo Pushing main branch to GitHub...
git push -u origin main

echo Done!
timeout /t 5