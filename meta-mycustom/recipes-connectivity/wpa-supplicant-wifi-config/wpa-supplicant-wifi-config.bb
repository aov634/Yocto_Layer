SUMMARY = "Custom wpa_supplicant.conf for Wi-Fi"

LICENSE = "CLOSED"
SRC_URI = "file://wpa_supplicant.conf"

do_install() {
    install -d ${D}/etc/wpa_supplicant
    install -m 0644 ${WORKDIR}/wpa_supplicant.conf ${D}/etc/wpa_supplicant/wpa_supplicant.conf
}

FILES_${PN} += "/etc/wpa_supplicant/wpa_supplicant.conf"