# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit grub2-theme

DESCRIPTION="Grub2 GFX theme Journey"
HOMEPAGE="http://lazybrowndog.net/debian/wheezy/journey/grub.html"
SRC_URI="http://lazybrowndog.net/debian/wheezy/journey/_grub-theme/journey-grub-theme.tar.gz -> ${P}.tar.gz"

# GPL-2+ according to theme.txt; OS icons are a different story, needs a use flag
LICENSE="GPL-2+ all-rights-reserved"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}"

RESTRICT="bindist mirror"

src_install() {
	insinto "${GRUB2_THEME_DIR}"
	doins -r ${PN}
}
