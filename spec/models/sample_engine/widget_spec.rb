require 'rails_helper'

module SampleEngine
  RSpec.describe Widget, type: :model do
    context 'validations' do
      context 'instance doesn\'t have the required attributes' do
        it 'is an invalid instance' do
          widget = Widget.new

          expect(widget).to_not be_valid
        end
      end

      context 'instance has the required attributes' do
        it 'is a valid instance' do
          widget = Widget.new(name: 'Matt')

          expect(widget).to be_valid
        end
      end
    end
  end
end