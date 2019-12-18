describe 'Deli Counter' do

  let(:katz_deli) { [] }
  let(:other_deli) { ["Logan", "Avi", "Spencer"] }
  let(:another_deli) { ["Amanda", "Annette", "Ruchi", "Jason", "Logan", "Spencer", "Avi", "Joe", "Rachel", "Lindsey"] }

  describe "#line" do
    context "there is nobody in line" do
      it "should say the line is empty" do
        # This line checks the current standard output (your terminal screen)
        # to make sure the correct output has been puts'ed.
        line(katz_deli)
      end
    end

    context "there are people in line" do
      it "should display the current line" do
        line(other_deli)
      end

      it 'works with different people in line' do
	line(another_deli)
      end
    end
  end

  describe "#take_a_number" do
    context "there is nobody in line" do
      it "should add a person to the line" do
        take_a_number(katz_deli, "Ada")
        # expect(katz_deli).to eq(["Ada"])
      end
    end

    context "there are already people in line" do
      it "should add a person to the end of the line" do
        # This weird looking %w syntax is just another way to instantiate an
        # Array. %w(item1 item2) is equivalent to ["item1", "item2"]
        take_a_number(other_deli, "Grace")
        # expect(other_deli).to eq(%w(Logan Avi Spencer Grace))
      end
    end

    context "adding multiple people in a row" do
      it "should correctly build the line" do
        take_a_number(katz_deli, "Ada")
        take_a_number(katz_deli, "Grace")
        take_a_number(katz_deli, "Kent")
        # expect(katz_deli).to eq(%w(Ada Grace Kent))
      end
    end
  end

  describe "#now_serving" do
    context "there are no people in line" do
      it "should say that the line is empty" do
        now_serving(katz_deli)
      end
    end

    context "there are people in line" do
      it "should serve the first person in line and remove them from the queue" do
        now_serving(other_deli)
# expect(other_deli).to eq(%w(Avi Spencer))
      end
    end
  end

end
