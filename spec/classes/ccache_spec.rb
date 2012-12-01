require 'spec_helper'

describe 'ccache' do
  it do
    should contain_package('ccache').with_ensure('present')
  end
end
