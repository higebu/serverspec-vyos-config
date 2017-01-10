require 'spec_helper'
require 'serverspec_vyos_config'

set :os, :family => 'base'

describe vyos_config('service ssh port') do
  let(:exit_status) { 0 }
  it { should be_exists }
  let(:stdout) { "22" }
  its(:value) { should eq '22' }
end
