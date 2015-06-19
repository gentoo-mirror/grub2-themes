# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit git-r3 grub2-theme

DESCRIPTION="Grub2 GFX theme ubuntu-mate"
HOMEPAGE="https://github.com/nadrimajstor/grub2-themes-ubuntu-mate"
EGIT_REPO_URI="https://github.com/nadrimajstor/grub2-themes-ubuntu-mate.git"

LICENSE="CC-BY-SA-4.0 GPL-2+"  # see file debian/copyright
SLOT="0"
KEYWORDS="~amd64 ~x86"  # despite live ebuild
IUSE=""

src_install() {
	insinto "${GRUB2_THEME_DIR}"/${PN}
	doins *.png theme.txt

	dodoc README.md
}
