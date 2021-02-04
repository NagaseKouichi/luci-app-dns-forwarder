#
# Copyright (C) 2014-2018 OpenWrt-dist
# Copyright (C) 2014-2018 Jian Chang <aa65535@live.com>
#
# This is free software, licensed under the GNU General Public License v3.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-dns-forwarder
PKG_VERSION:=1.6.3
PKG_RELEASE:=1

PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Jian Chang <aa65535@live.com>

LUCI_TITLE:=LuCI support for Dns-Forwarder
LUCI_DESCRIPTION:=LuCI Support for Dns-Forwarder.
LUCI_DEPENDS:=+dns-forwarder
LUCI_PKGARCH:=all

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
