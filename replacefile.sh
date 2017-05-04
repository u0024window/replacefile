# 第一个参数是源地址 第二个是目的地址 如果只有一个参数 源地址默认为当前地址
# error tips 
err () {
    echo "\033[31merror:$1\033[0m"
}

# 路径错误
com () {
    `ls $1 >/dev/null 2>&1`
    if [ 0 -ne $? ];then
        err "path $1"
        exit 1
    fi
}

# copy 文件
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

# 递归 遍历
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
# begin ==================================================
if [ -z "$1" ];then
    err "至少一个参数: [source] [dest]"
    exit 1
fi
if [ -z $2 ];then
    source='.'
    dest=$1
    com $1

else
    source=$1
    dest=$2
    com $1
    com $2
fi
# 复制的总文件数
total=0

IFS=$'\n'
lsp $source
# 输出总文件数
echo "copy file number is \033[35m$total\033[0m"