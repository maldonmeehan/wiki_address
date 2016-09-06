require 'rails_helper'

describe Type do
  it { should validate_presence_of :name }
  it { should should have_many :companies }
end
