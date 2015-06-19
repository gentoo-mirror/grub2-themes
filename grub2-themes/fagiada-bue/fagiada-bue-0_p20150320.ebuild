# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit grub2-theme

MY_PN=FagiadaBue
MY_PV=dcd0c969b4692713dd48e009dc765bdd67e199b7
DESCRIPTION="Grub2 GFX theme Fagiada Bue"
HOMEPAGE="https://github.com/scaamanho/FagiadaBue"
SRC_URI="https://github.com/scaamanho/${MY_PN}/archive/${MY_PV}.tar.gz -> ${P}.tar.gz"

# GPL-3+ from README.md
# all-rights-reserved due to icons
LICENSE="GPL-3+ all-rights-reserved"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S=${WORKDIR}/${MY_PN}-${MY_PV}
RESTRICT="bindist mirror"

src_prepare() {
	rm install.sh || die
}

src_install() {
	insinto "${GRUB2_THEME_DIR}"/${PN}
	doins -r *
}
