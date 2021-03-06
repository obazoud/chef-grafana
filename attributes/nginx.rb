#
# Cookbook Name:: grafana
# Attributes:: nginx
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
#

default['grafana']['nginx']['template'] = 'grafana-nginx.conf.erb'
default['grafana']['nginx']['template_cookbook'] = 'grafana'
default['grafana']['nginx']['auth_basic'] = false
default['grafana']['nginx']['httpasswd_file'] = '/etc/nginx/htpasswd.users'

include_attribute 'chef_nginx'

default['nginx']['default_site_enabled'] = false
