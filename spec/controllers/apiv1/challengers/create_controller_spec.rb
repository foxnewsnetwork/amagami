require 'rails_helper'

RSpec.describe Apiv1::Challengers::CreateController do
  let(:create) { post :create, challenger: @challenger_params }
  before do
    @challenger_params = {
      character: 'rihoko',
      comments: "some stuff",
      roots: "a man of forty",
      hobbies: "mining",
      projects: "get off to chile",
      skills: "being positive",
      books: "ABC Murders",
      genres: "Mystery detective",
      email: "nowhere@fag.com",
      address: "123 Fake Street",
      sex: "not lately"
    }
  end
  context 'creation' do
    subject { -> { create } }
    specify { should change(Apiv1::Challenger, :count).by 1 }
  end
  context 'output' do
    before { create }
    subject { JSON.parse(response.body)["challenger"]["character"] }
    specify { should eq "rihoko" }
  end
end