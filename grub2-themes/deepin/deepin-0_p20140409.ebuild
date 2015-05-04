# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit grub2-theme

MY_PN=deepin-grub2-themes
MY_PV=a089b317d0169ca13946ff0d9ef7383cfd893afd
DESCRIPTION="Grub2 GFX theme Deepin"
HOMEPAGE="https://github.com/linuxdeepin/deepin-grub2-themes"
SRC_URI="https://github.com/linuxdeepin/${MY_PN}/archive/${MY_PV}.tar.gz -> ${P}.tar.gz"

LICENSE="all-rights-reserved"  # no information on licensing found
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S=${WORKDIR}/${MY_PN}-${MY_PV}
RESTRICT="bindist mirror"

src_install() {
	insinto "${GRUB2_THEME_DIR}"
	doins -r ${PN}
}
