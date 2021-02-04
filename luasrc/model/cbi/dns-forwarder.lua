-- Copyright (C) 2016-2018 OpenWrt-dist
-- Copyright (C) 2016-2018 Jian Chang <aa65535@live.com>
-- Licensed to the public under the GNU General Public License v3.

local m, s, o


m = Map("dns-forwarder", translate("DNS-Forwarder"), translate("DNS-Forwarder is a tool for resolving DNS with TCP, can be used as upstream of ChinaDNS/ChinaDNS-NG."))

m:section(SimpleSection).template  = "dns-forwarder/status"

s = m:section(TypedSection, "dns-forwarder", translate("General Setting"))
s.anonymous   = true

o = s:option(Flag, "enable", translate("Enable"))
o.rmempty     = false

o = s:option(Value, "listen_port", translate("Listen Port"))
o.placeholder = 5300
o.default     = 5300
o.datatype    = "port"
o.rmempty     = false

o = s:option(Value, "listen_addr", translate("Listen Address"))
o.placeholder = "0.0.0.0"
o.default     = "0.0.0.0"
o.datatype    = "ipaddr"
o.rmempty     = false

o = s:option(Value, "dns_servers", translate("DNS Server"))
o.placeholder = "8.8.8.8:53"
o.default     = "8.8.8.8:53"
o.rmempty     = false

return m
