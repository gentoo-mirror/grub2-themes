# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit versionator grub2-theme rpm

MY_PV="$(replace_version_separator 2 '-')"
MY_P="grub2-theme-rosa-${MY_PV}"
DESCRIPTION="Grub2 GFX theme of ROSA Linux"
HOMEPAGE="http://wiki.rosalab.com/en/index.php/Main_Page"
SRC_URI="http://mirror.rosalab.ru/rosa/rosa2014.1/repository/SRPMS/main/release/${MY_P}.src.rpm
	http://file-store.rosalinux.ru/api/v1/file_stores/ed023d82532d53928f081248206267a8fae950c8 -> ${MY_P}.src.rpm"

LICENSE="GPL-3+"  # from grub2-theme-rosa.spec
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}"

src_unpack() {
	rpm_src_unpack
	tar xf rosa.tar.xz || die
}

src_install() {
	insinto "${GRUB2_THEME_DIR}"
	doins -r ${PN}
}
