# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit git-r3 grub2-theme

DESCRIPTION="Grub2 GFX theme Archxion"
HOMEPAGE="https://github.com/Generator/Grub2-themes"
EGIT_REPO_URI="https://github.com/Generator/Grub2-themes.git"

# GPL v3 according to https://github.com/Generator/Grub2-themes/blob/master/PKGBUILDs/Archlinux/PKGBUILD
# but it seems unlikely (at least as a whole) to me
LICENSE="all-rights-reserved"
SLOT="0"
KEYWORDS="~amd64 ~x86"  # despite live ebuild
IUSE=""

RESTRICT="bindist mirror"

src_install() {
	insinto "${GRUB2_THEME_DIR}"
	doins -r Archxion
}
