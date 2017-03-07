name=$1
pluginName=$2
suffix=$3

echo goint to install $name

subPath=${name#*/}

echo $subPath

prjName=${subPath%/*}

if [ X"" = X"$pluginName" ];
then
    pluginName=${prjName#elasticsearch-}
fi

if [ X"" = X"$suffix" ];
then
    suffix="master"
fi

downloadFile=https://github.com/$name/archive/$suffix.zip
unzipFolderName=$prjName-$suffix

echo subPath: $subPath
echo prjName: $prjName
echo pluginName: $pluginName
echo suffix: $suffix
echo downloadFile: $downloadFile
echo unzipFilderName: $unzipFilderName



cd _plugin

wget -O ${pluginName}.zip $downloadFile

unzip ${pluginName}.zip



mv $unzipFolderName/_site ./$pluginName


rm -r ${pluginName}.zip
rm -r $unzipFolderName
