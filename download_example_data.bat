REM tiny nerf download
set TINY_NERF_URI=http://cseweb.ucsd.edu/~viscomp/projects/LF/papers/ECCV20/nerf/tiny_nerf_data.npz
set TINY_NERF_FILE=tiny_nerf_data.npz
powershell -Command "Invoke-WebRequest -Uri %TINY_NERF_URI% -OutFile %TINY_NERF_FILE%"

if not exist "data" (
    mkdir data
)
cd data

set NERF_EXAMPLE_URI=http://cseweb.ucsd.edu/~viscomp/projects/LF/papers/ECCV20/nerf/nerf_example_data.zip
set NERF_EXAMPLE_FILE=nerf_example_data.zip
powershell -Command "Invoke-WebRequest -Uri %NERF_EXAMPLE_URI% -OutFile %NERF_EXAMPLE_FILE%"
powershell -Command "Expand-Archive -Path %NERF_EXAMPLE_FILE% -DestinationPath . -Force"
powershell -Command "Remove-Item %NERF_EXAMPLE_FILE%"

cd ..
echo All files have been downloaded and extracted.