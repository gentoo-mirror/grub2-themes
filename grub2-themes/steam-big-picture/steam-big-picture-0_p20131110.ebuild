# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit grub2-theme

MY_PN=Steam-Big-Picture-Grub-Theme
MY_PV=d5d255c7ebb15cc918540dc74422bffcad8c13cc
DESCRIPTION="Grub2 GFX theme Steam Big Picture"
HOMEPAGE="https://github.com/LegendaryBibo/Steam-Big-Picture-Grub-Theme"
SRC_URI="https://github.com/LegendaryBibo/${MY_PN}/archive/${MY_PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT BitstreamVera ArevFonts"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}"/${MY_PN}-${MY_PV}
RESTRICT="bindist mirror"

src_prepare() {
	rm *.sh *.sh.x || die
}

src_install() {
	insinto "${GRUB2_THEME_DIR}"/${PN}
	doins -r .
}
