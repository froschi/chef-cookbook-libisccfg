packages = Array.new

case node[:lsb][:codename]
when "lucid"
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
