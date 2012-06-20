include_recipe "libdns"
include_recipe "libisc"
include_recipe "libisccc"

packages = Array.new

case node[:lsb][:codename]
when "lucid"
  include_recipe "libcap"
  include_recipe "libxml2"

  packages |= %w/
    libisccfg60
  /
when "precise"
  packages |= %w/
    libisccfg82
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
