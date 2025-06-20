cp out/arch/arm64/boot/Image ./anykernel/
cp out/arch/arm64/boot/dtbo.img ./anykernel/

[ -n "$(find ./anykernel -maxdepth 1 -type f -name '*.zip')" ] && rm ./anykernel/*.zip

cd anykernel && zip -r Bigshot-kernel-AOSP-SukiSU-KPM-$(date +"%d-%m-%Y"-%H%M).zip *
#mv Bigshot-kernel-AOSP-AOSP-SukiSU-$(date +"%d-%m-%Y-%H%M").zip ../out/

cd ..

rm anykernel/Image && rm anykernel/dtbo.img
