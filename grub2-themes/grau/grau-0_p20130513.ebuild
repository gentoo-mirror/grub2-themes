# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit grub2-theme

DESCRIPTION="Grub2 GFX theme Grau"
HOMEPAGE="http://gnome-look.org/content/show.php/Grau+GRUB+Theme?content=158610"
SRC_URI="https://dl.dropboxusercontent.com/u/40152532/GrubThemes/Grau.tar.gz"

# For CC-BY-NC-SA-3.0 see home page
# all-rights-reserved for the icons
LICENSE="CC-BY-NC-SA-3.0 all-rights-reserved"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}"/${PN^}
RESTRICT="bindist mirror"

src_install() {
	insinto "${GRUB2_THEME_DIR}"/${PN}
	doins -r icons *.png *.pf2 theme.txt
}
