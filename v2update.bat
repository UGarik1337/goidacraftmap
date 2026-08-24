@echo off
title Pl3xMap Updater
echo --------------------------------------------------
echo Step 1: Copying areas.json from Pl3xMarkers...
echo --------------------------------------------------

if exist "D:\mcSG\plugins\Pl3xMarkers\world\areas.json" (
    copy /Y "D:\mcSG\plugins\Pl3xMarkers\world\areas.json" "D:\mcSG\plugins\Pl3xMap\web\tiles\world\areas.json"
)
if exist "D:\mcSG\plugins\Pl3xMarkers\world_nether\areas.json" (
    copy /Y "D:\mcSG\plugins\Pl3xMarkers\world_nether\areas.json" "D:\mcSG\plugins\Pl3xMap\web\tiles\world_nether\areas.json"
)
if exist "D:\mcSG\plugins\Pl3xMarkers\world_the_end\areas.json" (
    copy /Y "D:\mcSG\plugins\Pl3xMarkers\world_the_end\areas.json" "D:\mcSG\plugins\Pl3xMap\web\tiles\world_the_end\areas.json"
)

echo.
echo --------------------------------------------------
echo Step 2: Scanning for changed tiles and files...
echo --------------------------------------------------
cd /d "D:\mcSG\plugins\Pl3xMap\web"
git add .

echo.
echo --------------------------------------------------
echo Step 3: Pushing ONLY changed files to GitHub...
echo --------------------------------------------------
git commit -m "Update map tiles and zones"
git push origin main

echo.
echo ==================================================
echo Update complete! Map is live on GitHub Pages.
echo ==================================================
timeout /t 3