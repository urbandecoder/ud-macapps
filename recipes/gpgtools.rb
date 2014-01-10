#
# Cookbook Name:: ud-macapps
# Recipe:: gpgtools
#
# Copyright 2013, Urbandecoder Labs LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

dmg_properties = node['ud-macapps']['gpgtools']['dmg']

# Yeah, it's a weird pkg name on the DMG
dmg_package "Install" do
  source dmg_properties['source']
  checksum dmg_properties['checksum']
  volumes_dir 'GPG Suite'
  type 'pkg'
  action :install
  package_id 'org.gpgtools.macgpg2.pkg'
end