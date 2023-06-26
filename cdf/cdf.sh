cdf() {
    target_dir=$(find . -name "*" -type d 2>/dev/null | grep -v "\.git" | fzf)
    if [ -n "${target_dir}" ]; then
        cd ${target_dir}
    fi
}
