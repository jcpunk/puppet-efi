#
# Fact: efi
#
# Purpose: Set 'true' if system is booted into EFI
#
# Resolution:
#   if /sys/firmware/efi exists this is true, else false
#
# Notes:
#   The result is boolean
#
require 'facter'
Facter.add(:efi) do
  confine :kernel => "Linux"
  setcode do
    File.directory?('/sys/firmware/efi')
  end
end
