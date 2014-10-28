require_relative './spec_helper'

describe TutumActions do
  subject do
    TutumActions.new({})
  end

  it "can list" do
    expect(subject.list_url()).to eq("/action/")
  end
  
  it "can get" do
    expect(subject.get_url("TEST")).to eq("/action/TEST/")
  end
end