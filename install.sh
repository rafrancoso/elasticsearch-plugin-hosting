name=$1
pluginName=$2
suffix=$3

echo goint to install $name

owner=${name%%/*}

subPath=${name#*/}

<<<<<<< HEAD
echo $subPath

prjName=${subPath%/*}
=======
prjName=${subPath%%/*}
>>>>>>> 0fa5b1f58adb482aab37c875aba6f9231cd47c90

if [ X"" = X"$pluginName" ];
then
    pluginName=${prjName#elasticsearch-}
fi

if [ X"" = X"$suffix" ];
then
    suffix="master"
fi

downloadFile=https://github.com/$owner/$prjName/archive/$suffix.zip
unzipFolderName=$prjName-${suffix/\//-}

echo owner: $owner
echo subPath: $subPath
echo prjName: $prjName
echo pluginName: $pluginName
echo suffix: $suffix
echo downloadFile: $downloadFile
<<<<<<< HEAD
echo unzipFilderName: $unzipFilderName


=======
echo unzipFolderName: $unzipFolderName
>>>>>>> 0fa5b1f58adb482aab37c875aba6f9231cd47c90

cd _plugin

wget -O ${pluginName}.zip $downloadFile

unzip ${pluginName}.zip



mv $unzipFolderName/_site ./$pluginName


rm -r ${pluginName}.zip
rm -r $unzipFolderName
