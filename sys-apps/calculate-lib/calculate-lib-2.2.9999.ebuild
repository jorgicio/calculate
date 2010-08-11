# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit distutils git

EGIT_REPO_URI="git://git.calculate.ru/calculate-lib.git"

DESCRIPTION="The library for Calculate 2"
HOMEPAGE="http://www.calculate-linux.org/main/en/calculate2"
LICENSE="Apache-2.0"
SLOT="2.2"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="~sys-apps/calculate-templates-2.2.9999
	>=dev-python/python-ldap-2.0[ssl]
	>=dev-python/pyxml-0.8"
RDEPEND="${DEPEND}"

pkg_postinst() {
	sed -i '/^cl_pass_action/d' ${ROOT}/etc/calculate/calculate2.env
}
