# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit grub2-theme

DESCRIPTION="Grub2 GFX theme Axiom"
HOMEPAGE="http://gnome-look.org/content/show.php/Axiom+Grub+2+Theme?content=146396"
SRC_URI="https://dl.dropboxusercontent.com/u/40152532/GrubThemes/Axiom.tar.gz -> ${P}.tar.gz"

# Website says "GPL", no idea yet which version, cannot cover the icons
LICENSE="all-rights-reserved"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}"

RESTRICT="bindist mirror"

src_prepare() {
	rm Axiom/{*~,install.sh} || die
}

src_install() {
	insinto "${GRUB2_THEME_DIR}"
	doins -r Axiom
}
