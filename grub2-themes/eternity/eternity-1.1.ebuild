# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit grub2-theme

DESCRIPTION="Grub2 GFX theme Eternity"
HOMEPAGE="http://kde-look.org/content/show.php?content=168508
	http://kde-look.org/content/show.php?content=168507"
SRC_URI="http://kde-look.org/CONTENT/content-files/168508-${PN^}.tar.gz -> ${P}.tar.gz
	http://kde-look.org/CONTENT/content-files/168507-Eternity_Splash_Screen.tar.gz -> eternity-splash-screen-${PV}.tar.gz"

# Website says "GPL", no idea yet which version, cannot cover the icons
LICENSE="GPL-2 GPL-3 all-rights-reserved"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}"

src_unpack() {
	# Workaround CRC error on gzip layer
	gunzip < "${DISTDIR}"/${P}.tar.gz > ${P}.tar 2>/dev/null
	tar xf ${P}.tar || die

	# Remove damaged background images
	rm ${PN^}/background.png || die
	rm ${PN^}/terminal-background.png || die

	# And replace with same image from other tarball
	tar xf "${DISTDIR}"/eternity-splash-screen-${PV}.tar.gz ${PN^}/1920x1200/background.png || die
	mv ${PN^}/1920x1200/background.png ${PN^}/background.png || die
	cp ${PN^}/{,terminal-}background.png || die
}

src_install() {
	insinto "${GRUB2_THEME_DIR}"
	doins -r ${PN^}
}
