require 'spec_helper'

describe 'mr' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen'
    }
  end

  it do
    should include_class('homebrew')
    should include_class('boxen::config')
    should contain_class('mr')

    should contain_homebrew__formula('mr').with(
      :before => 'Package[boxen/brews/mr]'
    )
    should contain_package('boxen/brews/mr')
  end
end
