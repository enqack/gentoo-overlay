# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit readme.gentoo-r1

if [[ -z ${PV%%*9999} ]]; then
	EGIT_REPO_URI="https://github.com/zsh-users/${PN}.git"
	inherit git-r3
else
	MY_PV=$(ver_rs 3 -)
	SRC_URI="https://github.com/zsh-users/zsh-autosuggestions/archive/refs/tags/v${MY_PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="amd64 x86"
	S="${WORKDIR}/${PN}-${MY_PV}"
fi

DESCRIPTION="Fish-like fast/unobtrusive autosuggestions for zsh"
HOMEPAGE="https://github.com/zsh-users/zsh-autosuggestions"

LICENSE="MIT"
SLOT="0"

RDEPEND="app-shells/zsh"

DISABLE_AUTOFORMATTING="true"
DOC_CONTENTS="In order to use ${CATEGORY}/${PN} add
. /usr/share/zsh/site-functions/zsh-autosuggestions.zsh
at the end of your ~/.zshrc"

src_install() {
	emake
	insinto /usr/share/zsh/site-functions/
	doins zsh-autosuggestions.zsh
	readme.gentoo_create_doc
}

pkg_postinst() {
	elog $DOC_CONTENTS
	echo .
}
