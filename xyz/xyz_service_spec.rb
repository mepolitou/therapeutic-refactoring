require_relative './xyz_service'

describe XYZService do

  let(:target) do
    messages = {
      :publish_on => Date.new(2012, 3, 14),
      :xyz_category_prefix => 'abc',
      :kind => 'unicorn',
      :personal? => false,
      :id => 1337
    }
    stub(:target, messages)
  end

  subject { XYZService.xyz_filename(target) }

  it 'works' do
    subject.should eq('something')
  end

end
