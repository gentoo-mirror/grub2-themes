# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit grub2-theme

DESCRIPTION="Grub2 GFX theme Air Vision"
HOMEPAGE="http://kde-look.org/content/show.php?content=169426"
SRC_URI="https://zima330h.storage.yandex.net/rdisk/a204cc045f7155280747a6e73ead5e04627424ca19af756ac633b48970831192/554666ae/q6_8Qs7pkYBk_Rm6jm5gwixyBaHF4_d4sw3d5D3V29b7bSe0nZU4qxPJHDc3jBeLEMATyphMabmo5z3WtEA2Ng==?uid=0&filename=Air_Vision_2.tar.gz&disposition=attachment&hash=Qv4uOXUUWaNSfM000rcrTkMV1yUyh2YCm2KpXS4oUeM%3D&limit=0&content_type=application%2Fx-gzip&fsize=10087864&hid=5262371dd60c36b5d703274b46fb184b&media_type=compressed&tknv=v2&rtoken=876553fcd08c3e4d9acc94b407c85688&force_default=no -> ${P}.tar.gz"

# Says "GPL", no idea yet which version, cannot cover the icons
LICENSE="GPL-2 GPL-3 all-rights-reserved"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}"
RESTRICT="bindist mirror"

src_install() {
	insinto "${GRUB2_THEME_DIR}"
	doins -r Air_Vision_${PV}
}
