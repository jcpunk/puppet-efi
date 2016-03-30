require 'spec_helper'
describe 'efi' do

  context 'with defaults for all parameters' do
    it { should contain_class('efi') }
  end
end
