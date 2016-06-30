#
# Cookbook Name:: nomad
# Attributes:: install
#
# Copyright 2015-2016, Nathan Williams <nath.e.will@gmail.com>
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

default['nomad'].tap do |nomad|
  nomad['source_url'] = 'https://releases.hashicorp.com/nomad'
  nomad['package'], nomad['checksum'] =
    case node['os']
    when 'mac_os_x'
      %w(
        0.4.0/nomad_0.4.0_darwin_amd64.zip
        2f6bff636ae48343017e0e5edd4371f7abe434d1f70d95d7e28f08490c978c40
      )
    when 'windows'
      %w(
        0.4.0/nomad_0.4.0_windows_amd64.zip
        c98029f73c9cd173d6624d85dcfb5330308ee61033138334e8eea666f39d3919
      )
    else
      %w(
        0.4.0/nomad_0.4.0_linux_amd64.zip
        c0479dcc03d35c1b0f6e7be256732431384bec16901a124dd97b2a60d465fb91
      )
    end
end
