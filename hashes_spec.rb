##
# require Rspec to run
# answer the questions by filling the before and let parts

RSpec.describe "Hashes" do
  context "I have hashes initialized" do
    let(:a) {}
    let(:b) {}

    it "should have 'a' that is ':a' mapped to 1" do
      expect(a.keys).to eq([:a])
      expect(a.values).to eq([1])
    end

    it "should have 'b' that is ':b' mapped to 2" do
      expect(b.keys).to eq([:b])
      expect(b.values).to eq([2])
    end

    context "I merge 'b' to 'a' modifying 'a'" do
      let(:merged) {}

      it "should have 'merged' that have the keys ':a' and ':b' for the values 1 and 2 respectively" do
        expect(merged.keys).to eq([:a, :b])
        expect(merged.values).to eq([1, 2])
      end

      it "should have 'a' that have the keys ':a' and ':b' for the values 1 and 2 respectively" do
        merged
        expect(a.keys).to eq([:a, :b])
        expect(a.values).to eq([1, 2])
      end
    end

    context "I merge 'b' to 'a' keeping 'a' integrity" do
      let(:merged) {}

      it "should have 'merged' that have the keys ':a' and ':b' for the values 1 and 2 respectively" do
        expect(merged.keys).to eq([:a, :b])
        expect(merged.values).to eq([1, 2])
      end

      it "should have 'a' that is ':a' mapped to 1" do
        merged
        expect(a.keys).to eq([:a])
        expect(a.values).to eq([1])
      end

      context "I want the keys of 'merged'" do
        let(:keys) {}

        it "should have 'keys' that is the array of keys in 'merged'" do
          expect(keys).to eq([:a, :b])
        end
      end

      context "I want the values of 'merged'" do
        let(:values) {}

        it "should have 'values' that is the array of keys in 'merged'" do
          expect(values).to eq([1, 2])
        end
      end

      context "I delete an element keeping the hash integrity" do
        let(:deleted) {}

        it "should have 'deleted' that i merged without ':a'" do
          expect(deleted.keys).to eq([:b])
          expect(deleted.values).to eq([2])
        end

        it "should have 'merged' that have the keys ':a' and ':b' for the values 1 and 2 respectively" do
          deleted
          expect(merged.keys).to eq([:a, :b])
          expect(merged.values).to eq([1, 2])
        end
      end

      context "I delete an element modifying base hash" do
        let(:deleted) {}

        it "should have 'deleted' that i merged without ':a'" do
          expect(deleted.keys).to eq([:b])
          expect(deleted.values).to eq([2])
        end

        it "should have 'merged' that i merged without ':a'" do
          deleted
          expect(merged.keys).to eq([:b])
          expect(merged.values).to eq([2])
        end
      end
    end
  end

  context "I have the alphabet mapped to its letter number (TIP use ranges and zip)" do
    let(:alphabet) {}

    it "should have 'alphabet' as described" do
      26.times do |i|
        expect(alphabet[('a'..'z').to_a[i]]).to eq(i + 1)
      end
    end
  end

  context "I have a tree (TIP it is a recursion, you can use lambda)" do
    let(:tree) {}

    it "should have 'tree' that has keys 1 to 5 mapped to the hash that has keys 1 to 5 mapped to the hash... last values are nil. repeat the process 3 times" do
      expect(tree.keys).to eq((1..5).to_a)
      (1..5).to_a.each do |i|
        expect(tree[i].keys).to eq((1..5).to_a)
        (1..5).to_a.each do |j|
          expect(tree[i][j].keys).to eq((1..5).to_a)
          (1..5).to_a.each do |k|
            expect(tree[i][i][k].keys).to eq((1..5).to_a)
            expect(tree[i][i][k].values).to eq(Array.new(5))
          end
        end
      end
    end
  end
end
