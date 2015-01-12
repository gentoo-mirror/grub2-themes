# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit grub2-theme

DESCRIPTION="Gentoo Grub2 GFX theme by CMoH"
HOMEPAGE="https://github.com/CMoH/grub2-theme-gentoo"
SRC_URI="https://github.com/CMoH/grub2-theme-gentoo/archive/v${PV}.tar.gz -> ${P}.tar.gz"

# unclear licensing https://github.com/CMoH/grub2-theme-gentoo/issues/1
LICENSE="all-rights-reserved"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}"/grub2-theme-gentoo-${PV}
RESTRICT="bindist mirror"

src_install() {
	insinto "${GRUB2_THEME_DIR}"/${PN}
	doins -r icons
	doins -r gentoo/*
	dodoc README.md
}
