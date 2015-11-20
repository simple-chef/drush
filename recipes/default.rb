#
# Cookbook Name:: simple-drush
# Recipe:: default
#
# Copyright 2014, CN Group
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#


remote_file node['simple-drush']['source-path'] do
  source 'http://files.drush.org/drush.phar'
  mode '0755'
end


#%w[/etc/drush /etc/drush/aliases.d ].each do |path|
#    directory path do
#        owner 'root'
#        group 'root'
#    end
# end

bash "finish_drush" do
  code <<-EOH
  drush core-status
  drush init
  EOH
end