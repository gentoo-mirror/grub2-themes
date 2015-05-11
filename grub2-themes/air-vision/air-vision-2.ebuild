# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit grub2-theme

DESCRIPTION="Grub2 GFX theme Air Vision"
HOMEPAGE="http://kde-look.org/content/show.php?content=169426"
SRC_URI="https://www.hartwork.org/public/Air_Vision_2.tar.gz -> ${P}.tar.gz"

# Says "GPL", no idea yet which version, cannot cover the icons
LICENSE="GPL-2 GPL-3 all-rights-reserved"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}"
RESTRICT="bindist mirror"

src_install() {
	insinto "${GRUB2_THEME_DIR}"
	doins -r Air_Vision_${PV}
}
