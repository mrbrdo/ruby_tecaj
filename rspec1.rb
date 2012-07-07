require 'rspec'
require_relative './pyramid_generator'

describe PyramidGenerator do
  # example output for 3 line pyramid
  let(:pyramid_3) do
<<-EOS
  *
 ***
*****
EOS
    .rstrip # remove trailing \n
  end

  context "#initialize" do
    it "initializes with number of lines" do
      g = PyramidGenerator.new 25
      g.count.should eq(25)
    end

    it "defaults to 10 lines" do
      g = PyramidGenerator.new
      g.count.should eq(10)
    end

    it "can accept the number of lines as a string" do
      # because command-line arguments are strings
      g = PyramidGenerator.new "25"
      g.count.should eq(25)
    end
  end

  context '#line_asterisk_count' do
    examples = [
      [1, 1],
      [2, 3],
      [3, 5]
    ]

    examples.each do |(line_nr, a_count)|
      it "calculates the number of asterisks for line #{line_nr}" do
        g = PyramidGenerator.new 3
        g.line_asterisk_count(line_nr).should eq(a_count)
      end
    end
  end

  context '#line_spaces_count' do
    examples = [
      [1, 2],
      [2, 1],
      [3, 0]
    ]

    examples.each do |(line_nr, a_count)|
      it "calculates the number of spaces for line #{line_nr}" do
        g = PyramidGenerator.new 3
        g.line_spaces_count(line_nr).should eq(a_count)
      end
    end
  end

  it "returns a proper string for a line" do
    g = PyramidGenerator.new 3
    g.stub(:line_asterisk_count => 3)
    g.stub(:line_spaces_count => 1)
    g.get_line(2).should eq(" ***")
  end

  it "returns proper output for a pyramid with 3 lines" do
    g = PyramidGenerator.new 3

    g.get_pyramid.should eq(pyramid_3)
  end

  it "displays a pyramid with 3 lines" do
    g = PyramidGenerator.new 3

    g.should_receive(:puts).with(pyramid_3)
    g.display_pyramid
  end
end
