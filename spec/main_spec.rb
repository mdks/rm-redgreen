describe "Application 'rm-redgreen'" do

  it "has bacon" do
    Bacon.nil?.should.equal false
  end

  it "is in development mode" do
    App.development?.should == true
  end

  it "loads ansiterm" do
    Term.nil?.should.equal false
    Term::ANSIColor.nil?.should.equal false
  end

  it "can use ansiterm directly or using String#p to use NSLog with color" do
    $stdout.puts "Is this red?".red
    p "I like Cyan", :cyan
    p "Sometimes this is hard to read...", :blue
    p [{:oh=>"this"}, "is", :convenient].inspect, :yellow
    "Is this red?".red.should.equal "\e[31mIs this red?\e[0m"
  end

  it "has a different color to expose empty tests" do
  end

  it "spits you red when you're wrong" do
    1.should == 2
  end

end
