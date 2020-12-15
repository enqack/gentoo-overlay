# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit gnome2-utils

DESCRIPTION="Dash to dock extension is an enhanced dash for GNOME Shell"

HOMEPAGE="https://micheleg.github.io/dash-to-dock"

SRC_URI="https://github.com/micheleg/dash-to-dock/archive/extensions.gnome.org-v68.tar.gz"

# Source directory
S="${WORKDIR}/dash-to-dock-extensions.gnome.org-v68"

# License of the package.  This must match the name of file(s) in the
# licenses/ directory.  For complex license combination see the developer
# docs on gentoo.org for details.
LICENSE="GPL-2"

SLOT="0"

KEYWORDS="amd64 x86"

COMMON_DEPEND="dev-libs/glib:2"
RDEPEND="${COMMON_DEPEND}
	app-eselect/eselect-gnome-shell-extensions
	>=gnome-base/gnome-shell-3.18.0
"
DEPEND="${COMMON_DEPEND}"
BDEPEND="
	dev-util/intltool
	sys-devel/gettext
"

pkg_preinst() {
	gnome2_schemas_savelist
}

pkg_postinst() {
	gnome2_schema_update
	ebegin "Updating list of installed extensions"
	eselect gnome-shell-extensions update
	eend $?
}

pkg_postrm() {
	gnome2_schemas_update
}

