require 'spec_helper'

describe Customer do
  let(:customer) { create(:customer) }
  describe '.to_handson' do
    it "can gen an array of data for handson" do
      data = Customer.pluck(:id, :name).unshift(column_header)
      expect(Customer.to_handson(:id, :name)).to eq data
    end
  end

  describe '.handson_header' do
    it "can get an array of attributes" do
      expect(Customer.handson_header([:id, :name])).to eq column_header
    end
  end
end

def column_header
  [I18n.t('activerecord.attributes.customer.id'),I18n.t('activerecord.attributes.customer.name')]
end
