=begin
  This file is part of WinRM; the Ruby library for Microsoft WinRM.

  Copyright © 2010 Dan Wanek <dan.wanek@gmail.com>

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
=end
if File.exist? '/usr/heimdal/lib/libgssapi.dylib'
  #require 'gssapi/heimdal'
end

require 'date'
require 'kconv'
require 'logger'
#require 'httpclient'
require 'httpi'
require 'savon'
require 'uuidtools'
require 'base64'
require 'nokogiri'
require 'winrm/iso8601_duration'


module WinRM

  NS_SOAP_ENV    ='s'   # http://www.w3.org/2003/05/soap-envelope
  NS_ADDRESSING  ='a'   # http://schemas.xmlsoap.org/ws/2004/08/addressing
  NS_CIMBINDING  ='b'   # http://schemas.dmtf.org/wbem/wsman/1/cimbinding.xsd
  NS_ENUM        ='n'   # http://schemas.xmlsoap.org/ws/2004/09/enumeration
  NS_TRANSFER    ='x'   # http://schemas.xmlsoap.org/ws/2004/09/transfer
  NS_WSMAN_DMTF  ='w'   # http://schemas.dmtf.org/wbem/wsman/1/wsman.xsd
  NS_WSMAN_MSFT  ='p'   # http://schemas.microsoft.com/wbem/wsman/1/wsman.xsd
  NS_SCHEMA_INST ='xsi' # http://www.w3.org/2001/XMLSchema-instance
  NS_WIN_SHELL   ='rsp' # http://schemas.microsoft.com/wbem/wsman/1/windows/shell
  NS_WSMAN_FAULT = 'f'  # http://schemas.microsoft.com/wbem/wsman/1/wsmanfault
  NS_WSMAN_CONF  = 'cfg'# http://schemas.microsoft.com/wbem/wsman/1/config
  require 'winrm/logger'
  require 'winrm/transport/base_transport'
  require 'winrm/transport/http_gssapi'
  require 'winrm/transport/http_plaintext'
  require 'winrm/transport/http_ssl'

  require 'winrm/service'
  require 'winrm/client'
  require 'winrm/exceptions'

  class << self

    def logger
      @logger ||= ::Logger.new(STDOUT)
    end

    attr_writer :logger
     
  end

end

