# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit grub2-theme rpm

SLOT="12.2"
MY_PN=branding-openSUSE-${SLOT}
DESCRIPTION="Grub2 GFX theme openSUSE"
HOMEPAGE="https://github.com/openSUSE/branding"
SRC_URI="http://download.opensuse.org/update/${SLOT}/src/${MY_PN}-${PV}.src.rpm"
LICENSE="all-rights-reserved"  # bits re-used from various places, see README
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}"/openSUSE/

src_compile() {
	:
}

src_install() {
	local theme_dir="${GRUB2_THEME_DIR}"/openSUSE-${SLOT}
	insinto "${theme_dir}"
	doins -r grub2/theme/*
	doins -r grub2/backgrounds
	dosym backgrounds/640x480.png "${theme_dir}"/background.png
}
