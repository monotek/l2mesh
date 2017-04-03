# vim: set expandtab:
#
#    Copyright (C) 2012 eNovance <licensing@enovance.com>
#
#    Author: Loic Dachary <loic@dachary.org>
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
class l2mesh::params {
  case $::osfamily {
    'Debian': {
      $keys_directory           = '/var/lib/puppet/l2mesh'
      $tinc_package_name        = 'tinc'
    }
    'RedHat': {
      $keys_directory           = '/var/lib/puppet/l2mesh'
      $tinc_package_name        = 'tinc'
    }
    default: {
      fail("Unsupported osfamily: ${::osfamily}, operatingsystem: ${::operatingsystem}, module ${module_name} only support osfamily RedHat and Debian")
    }
  }
  file { '/var/lib/puppet':
    ensure => 'directory',
  }
}
