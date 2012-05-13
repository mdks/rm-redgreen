describe "Application 'rm-redgreen'" do

  it "has no windows" do
    UIApplication.sharedApplication.windows.size.should.equal 0
  end

  describe "Baconator and Ansiterminator" do
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
  end

  describe "String Mod" do
    it "can easily become a certain color" do
      # p "I like Cyan", :cyan
      # p "Sometimes this is hard to read...", :blue
      # p [{:oh=>"this"}, "is", :convenient].inspect, :yellow
      "Is this red?".red.should.equal "\e[31mIs this red?\e[0m"
    end
  end

  describe "Some Other Module" do
    it "oopsies I forgot to fill this out. OR DID I?" do
    end

    it "spits you red when you're wrong" do
      1.should == 2
    end

    it "has a different color to expose empty tests" do
    end

    it "spits you greens when you're right" do
      1.should == 1
    end
  end

  describe "Yet Another Component" do
    it "spits you greens when you're right" do
      1.should == 1
    end

    it "spits you greens when you're right" do
      1.should == 1
    end
    
    it "has a different color to expose empty tests" do
    end

    it "one should equal one!" do
      1.should==1
    end

    it "spits you red when you're wrong" do
      1.should == 2
    end
  end

end
