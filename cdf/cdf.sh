# cdfコマンド (cdf)
# カレントディレクトリ以下のディレクトリをfzfで選択して移動する

cdf() {
    target_dir=$(find . -name "*" -type d 2>/dev/null | grep -v "\.git" | fzf)
    if [ -n "${target_dir}" ]; then
        cd ${target_dir}
    fi
}

# todo: 引数でディレクトリを指定できるようにする
