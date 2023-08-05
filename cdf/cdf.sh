# cdfコマンド (cdf)
# カレントディレクトリ以下のディレクトリをfzfで選択して移動する

cdf() {
    # カレントディレクトリ
    current_dir=$(pwd)

    # 引数があればカレントディレクトリを変更
    if [ $# -gt 0 ]; then
        current_dir=$1
    fi

    # カレントディレクトリが存在しなければ終了
    if [ ! -d ${current_dir} ]; then
        echo "No such directory: ${current_dir}"
        return 1
    fi

    # カレントディレクトリを移動
    cd ${current_dir}

    # カレントディレクトリ以下のディレクトリをfzfで選択
    target_dir=$(find . -name "*" -type d 2>/dev/null | grep -v "\.git" | fzf)
    if [ -n "${target_dir}" ]; then
        cd ${target_dir}
    fi
}
