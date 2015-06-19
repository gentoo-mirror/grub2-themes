# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit grub2-theme

MY_PN=huayra-grub-themes
MY_PV=ff7d4282f1702a7ef314f10b969925a0948f1cc4
DESCRIPTION="Grub2 GFX theme Huayra Limbo"
HOMEPAGE="https://github.com/HuayraLinux/huayra-grub-themes"
SRC_URI="https://github.com/HuayraLinux/${MY_PN}/archive/${MY_PV}.tar.gz -> ${P}.tar.gz"

# all-rights-reserved for icons
# GPL-2+ from file debian/copyright
LICENSE="GPL-2+ all-rights-reserved"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}"/${MY_PN}-${MY_PV}
RESTRICT="bindist mirror"

src_prepare() {
	rm ${PN}/install.sh || die
}

src_install() {
	insinto "${GRUB2_THEME_DIR}"
	doins -r ${PN}
}
