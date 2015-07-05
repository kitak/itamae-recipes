require 'spec_helper'

describe command("ruby -v"), :if => os[:family] == 'redhat' do
  let(:disable_sudo) { true }
  its(:stdout) { should match /ruby\s2\.2\.2/ }
end
