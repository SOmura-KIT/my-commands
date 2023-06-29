# 実行可能スクリプトの配置先
bin_path=${HOME}/.local/bin
cp ./aur/aur    ${bin_path}
cp ./pan/pan    ${bin_path}
cp ./tef/tef    ${bin_path}
cp ./vc/vc      ${bin_path}
cp ./vcf/vcf    ${bin_path}
cp ./vf/vf      ${bin_path}
cp ./smart-cam/smart-cam    ${bin_path}

# sourceでシェルに読み込むスクリプトの配置先
source_path=${HOME}/.local/source
cp ./cdf/cdf.sh ${source_path}
