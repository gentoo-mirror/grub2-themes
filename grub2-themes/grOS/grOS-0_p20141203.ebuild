# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit grub2-theme

MY_PN=grOS-Grub2-Themes
MY_PV=f9219d09bf0d5443e1ce3926fcc4ecfc7a674421
DESCRIPTION="Grub2 GFX theme grOS"
HOMEPAGE="https://github.com/grOS-TEAM/grOS-Grub2-Themes"
SRC_URI="https://github.com/grOS-TEAM/${MY_PN}/archive/${MY_PV}.tar.gz -> ${P}.tar.gz"

LICENSE="CC-BY-SA-4.0 GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S=${WORKDIR}/${MY_PN}-${MY_PV}
RESTRICT="bindist mirror"

src_prepare() {
	rm -R src || die
}

src_install() {
	insinto "${GRUB2_THEME_DIR}"/${PN}
	doins -r *
}
