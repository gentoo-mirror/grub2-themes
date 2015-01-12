# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit git-r3 grub2-theme

DESCRIPTION="Grub2 GFX theme for DeniX OS"
HOMEPAGE="https://github.com/denix666/denix-grub2-theme"
EGIT_REPO_URI="https://github.com/denix666/denix-grub2-theme.git"

# "GPL" according to denix-grub2-theme.spec
#   https://github.com/denix666/denix-grub2-theme/blob/master/denix-grub2-theme.spec
# unclear which version and if background image convered
#   https://github.com/denix666/denix-grub2-theme/issues
# no distro icons shipped
# CC-BY-SA-3.0 since files are copied from starlight 1:1
LICENSE="GPL-2 GPL-3 CC-BY-SA-3.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"  # despite live ebuild
IUSE=""

RESTRICT="bindist mirror"

src_install() {
	insinto "${GRUB2_THEME_DIR}"
	doins -r usr/share/grub/themes/denix
}
