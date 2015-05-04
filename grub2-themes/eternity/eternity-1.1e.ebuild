# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit grub2-theme

DESCRIPTION="Grub2 GFX theme Eternity"
HOMEPAGE="http://kde-look.org/content/show.php?content=168508"
SRC_URI="http://kde-look.org/CONTENT/content-files/168508-${PN^}.tar.gz -> ${P}.tar.gz"

# GPL-2+ from theme.txt
# all-rights-reserved due to the icons
LICENSE="GPL-2+ all-rights-reserved"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}"

src_install() {
	insinto "${GRUB2_THEME_DIR}"
	doins -r ${PN^}
}
