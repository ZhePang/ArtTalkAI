require 'rails_helper'

RSpec.describe ArtsHelper, type: :helper do
  describe "arts helper" do
    it "display_art" do
      art1 = Art.new({:title => 'Lady with an Ermine',
                   :author => 'Leonardo da Vinci',
                   :description => 'Lady with an Ermine',
                   :link => 'erminelady.png',
                   :release_date => '28-Aug-1489'})
      expect(display_art(art1)).to eq("<img src=\"/images/erminelady.png\" />")
    end
  end
end
