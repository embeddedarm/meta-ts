FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " file://session "

do_install_append() {
	install -d ${D}/etc/
	install -d ${D}/etc/mini_x
	install -m 755 ${S}/session ${D}/etc/mini_x
}
