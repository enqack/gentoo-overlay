# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Manages the READER environment variable"
HOMEPAGE="https://wiki.gentoo.org/wiki/No_homepage"
SRC_URI=""
S=${WORKDIR}

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE=""

RDEPEND="app-eselect/eselect-lib-bin-symlink"

src_install() {
	insinto /usr/share/eselect/modules
	newins "${FILESDIR}"/reader.eselect-${PV} reader.eselect
}
