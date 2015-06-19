# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit grub2-theme

DESCRIPTION="Grub2 GFX theme Archlinux by Gutsblack"
HOMEPAGE="https://forums.archlinux.fr/viewtopic.php?t=11361"
SRC_URI="http://gutsblack.free.fr/shots/grub_archlinux.tar.gz -> ${P}.tar.gz"

# GPL-2+ according to theme.txt; OS icons are a different story, needs a use flag
LICENSE="GPL-2+ all-rights-reserved"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}"

RESTRICT="bindist mirror"

src_install() {
	insinto "${GRUB2_THEME_DIR}"/${PN}
	doins -r archlinux/*
}
