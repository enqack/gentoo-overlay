# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# inherit lists eclasses to inherit functions from. For example, an ebuild
# that needs the eautoreconf function from autotools.eclass won't work
# without the following line:
#inherit autotools
#
# Eclasses tend to list descriptions of how to use their functions properly.
# Take a look at the eclass/ directory for more examples.

DESCRIPTION="Dash to dock extension is an enhanced dash for GNOME Shell"

HOMEPAGE="micheleg.github.io/dash-to-dock"

SRC_URI="https://github.com/micheleg/dash-to-dock/archive/extensions.gnome.org-v69.tar.gz"

# Source directory
S="${WORKDIR}/dash-to-dock-extensions.gnome.org-v69"


# License of the package.  This must match the name of file(s) in the
# licenses/ directory.  For complex license combination see the developer
# docs on gentoo.org for details.
LICENSE=""

SLOT="0"

KEYWORDS="amd64"

# Comprehensive list of any and all USE flags leveraged in the ebuild,
# with some exceptions, e.g., ARCH specific flags like "amd64" or "ppc".
# Not needed if the ebuild doesn't use any USE flags.
IUSE="gnome X"

# A space delimited list of portage features to restrict. man 5 ebuild
# for details.  Usually not needed.
#RESTRICT="strip"


# Run-time dependencies. Must be defined to whatever this depends on to run.
# Example:
#    ssl? ( >=dev-libs/openssl-1.0.2q:0= )
#    >=dev-lang/perl-5.24.3-r1
# It is advisable to use the >= syntax show above, to reflect what you
# had installed on your system when you tested the package.  Then
# other users hopefully won't be caught without the right version of
# a dependency.
RDEPEND="gnome-extra/gnome-shell-extensions"

# Build-time dependencies that need to be binary compatible with the system
# being built (CHOST). These include libraries that we link against.
# The below is valid if the same run-time depends are required to compile.
#DEPEND="${RDEPEND}"

# Build-time dependencies that are executed during the emerge process, and
# only need to be present in the native build system (CBUILD). Example:
#BDEPEND="virtual/pkgconfig"

