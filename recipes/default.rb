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

git node['simple-drush']['source-path'] do
  repository "https://github.com/drush-ops/drush.git"
  revision node['simple-drush']['release']
  action :sync
end

link "/usr/bin/drush" do
  to node['simple-drush']['source-path']"/drush"
end

%w[/etc/drush /etc/drush/aliases.d ].each do |path|
    directory path do
        owner 'root'
        group 'root'
    end
end

bash "finish_drush" do
  code <<-EOH
  cd node['simple-drush']['source-path']
  composer install
  drush --version
  EOH
end