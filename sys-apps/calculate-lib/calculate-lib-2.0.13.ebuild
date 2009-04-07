# Copyright 2008 Calculate Pack, http://www.calculate-linux.ru
# Distributed under the terms of the GNU General Public License v2

EAPI="2"

inherit distutils

SRC_URI="ftp://mirror.yandex.ru/calculate/calculate2/${PN}/${P}.tar.bz2
         http://mirror.yandex.ru/calculate/calculate2/${PN}/${P}.tar.bz2
         ftp://ftp.linux.kiev.ua/pub/Linux/Calculate/calculate2/${PN}/${P}.tar.bz2"

DESCRIPTION="The library for Calculate 2"
HOMEPAGE="http://www.calculate-linux.ru/Calculate_2"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND="!<sys-apps/calculate-client-2.0.15
        !<sys-apps/calculate-server-2.0.9
		>=dev-lang/python-2.5.2
        >=dev-python/python-ldap-2.0[ssl]
        >=dev-python/pyxml-0.8"
