# 第一个参数是源地址 第二个是目的地址 如果只有一个参数 源地址默认为当前地址
if [ -z $2 ];then
    source='.'
    dest=$1
else
    source=$1
    dest=$2
fi
# 复制的总文件数
total=0
copyFile () {
    local sourcePath=$1
    local name=${sourcePath##*/}
        local result=`find $dest -name "$name"`
        local arrResult=($result)
        for destPath in ${arrResult[*]}
        do
            read -p "COPY: $sourcePath -> $destPath (y/n)" is
            if [ "$is" = "y" ];then
                `cp -p $sourcePath $destPath`
                if [ 0 -ne $? ];then
                    echo "copy $sourcePath fail."
                else
                    let total++
                fi
            else
                continue
            fi
        done
}
lsp () {
    local spath=$1
    if [ -d "$1" ];then
        local sname=`ls $spath`
        local sname=($sname)
        for v in ${sname[*]}
        do
            if [ -f "$spath/$v" ];then
                copyFile  "$spath/$v"
            else
                lsp "$spath/$v"
            fi
        done
    fi
}
IFS=$'\n'
lsp $source
# 输出总文件数
echo "copy file number is $total"