require 'spec_helper'

describe 'mr' do
  it { should contain_class('mr') }
  it { should contain_package('boxen/brews/mr') }

end
