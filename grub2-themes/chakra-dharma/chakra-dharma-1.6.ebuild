# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit grub2-theme

DESCRIPTION="Grub2 GFX theme Dharma of the Chakra project"
HOMEPAGE="http://malcer.deviantart.com/art/Dharma-GRUB2-theme-323177583"
SRC_URI="http://chakra.sourceforge.net/sources/chakra-artwork/dharma/grub2-themes/${PV}/Dharma.tar.xz -> ${P}.tar.xz"

# see file LICENSE
#   own artwork: CC-BY-ND-3.0 (was CC-BY-ND-3.0 up to 1.5)
#   oxygen-based drive icon: LGPL-3?
#   distro logos: all-rights-reserved
LICENSE="CC-BY-ND-3.0 LGPL-3 all-rights-reserved"
SLOT="${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}"
RESTRICT="bindist mirror"

src_install() {
	insinto "${GRUB2_THEME_DIR}"/${P}
	doins -r Dharma/*
}
