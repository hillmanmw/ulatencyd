# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="Ulatency is a daemon that controls how the Linux kernel will spend it's resources on the running processes."
HOMEPAGE="https://github.com/poelzi/ulatencyd"
SRC_URI="https://github.com/poelzi/ulatencyd/blob/master/client/ulatency"

AUTHOR="hillmanmw"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86"

USE=""

DEPEND=
  "python-dbus
  python 2.5
  ulatencyd
  python-qt4"
RDEPEND=""

LICENSE=GPL-2"
SLOT="0"

src_prepare() {
  unpack ${D}
}

src_install() {
  cd ${D}
  emake DESTDIR="${D}" install
