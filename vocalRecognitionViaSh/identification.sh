

#Transform le premier fichier en paramètre (de type en wave) en $1
java -Xmx2024m -jar ./LIUM_SpkDiarization.jar --fInputMask=./wav/$1.wav --sOutputMask=./seg/$1.seg --doCEClustering  showName

java -Xmx2G -Xms2G -cp ./LIUM_SpkDiarization.jar  fr.lium.spkDiarization.programs.Identification --help --sInputMask=./seg/$1.seg --fInputMask=./wav/$1.wav  --sOutputMask=$1.ident.seg --fInputDesc="audio16kHz2sphinx,1:3:2:0:0:0,13,1:1:300:4" --tInputMask=./modele/modeledetest1min.gmm --sTop=5,ubm.gmm  --sSetLabel=add testShow
