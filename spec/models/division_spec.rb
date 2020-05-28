require 'rails_helper'

describe Division do
  it { should have_many(:employees)}
  it { should validate_presence_of :name }
  it { should validate_length_of(:name).is_at_most(100) }
end

describe Division do
  it("titleizes the name of an division")do
    division = Division.create({name: "division1"})
    expect(division.name()).to(eq("Division1"))
  end
end