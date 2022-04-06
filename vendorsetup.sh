# Remove Default Hals
rm -rf hardware/qcom-caf/wlan
rm -rf hardware/qcom-caf/msm8996/audio
rm -rf hardware/qcom-caf/msm8996/media
rm -rf hardware/qcom-caf/msm8996/display

# Hals
git clone https://github.com/bibarub/hardware_qcom_wlan -b 12.x hardware/qcom-caf/wlan
git clone https://github.com/LineageOS/android_hardware_qcom_audio -b lineage-19.0-caf-msm8996 hardware/qcom-caf/msm8996/audio
git clone https://github.com/LineageOS/android_hardware_qcom_media -b lineage-19.0-caf-msm8996 hardware/qcom-caf/msm8996/media
git clone https://github.com/LineageOS/android_hardware_qcom_display -b lineage-19.0-caf-msm8996 hardware/qcom-caf/msm8996/display

# Kernel
git clone https://github.com/LineageOS/android_kernel_xiaomi_onclite -b lineage-18.1 kernel/xiaomi/onclite

# Vendor
git clone https://github.com/jacksproject/android_vendor_xiaomi_onclite -b twelve vendor/xiaomi/onclite 
