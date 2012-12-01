require 'spec_helper'

describe 'ccache' do
  it {
    should contain_class('ccache::params')
    should contain_package('ccache').with_ensure('present')
  }
end
