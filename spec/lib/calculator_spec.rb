require './lib/calculator'

describe Calculator do
  # it "should be true" do
  #   'firetruck'.should == 'police car'   
  # end     
  before do
    @my_calculator = Calculator.new 
  end
                            
  it "should be a Calculator class" do
    @my_calculator.should be_a(Calculator)
  end         
  
  it "should add two numbers" do
    @my_calculator.add(2, 3).should == 5
    @my_calculator.add(2, 3).should_not == 6
  end  
  
  it "should add a postive and a negative number" do       
    @my_calculator.add(2, -3).should == -1
    @my_calculator.add(2, -3).should_not == 5
  end
  
  it "should add one number" do
    @my_calculator.add(3).should == 3
  end               
  
  it "should add no numbers" do
    @my_calculator.add.should == 0
  end                             
  
  it "should add good strings appropriately" do
    @my_calculator.add('1', '2').should == 3
  end
  
  it "should add bad strings appropriately" do
    @my_calculator.add('fire', 'truck').should == 0
  end                                              
  
  it "should add one bad string" do
    @my_calculator.add(5, 'fire').should == 5
  end  
  
  it "should add negative value and bad string" do
    @my_calculator.add(-3, 'fire').should == -3
  end                                          
  
  it "should add decimal numbers" do
    @my_calculator.add(3.0, 5.0).should == 8
    @my_calculator.add(3.1, 5.0).should == 8.1
  end

  it "should subtract two numbers" do
    @my_calculator.subtract(7, 2).should == 5
    @my_calculator.subtract(7, 3).should_not == 5
  end  

  it "should subtract a postive and a negative number" do       
    @my_calculator.subtract(2, -3).should ==  5
    @my_calculator.subtract(2, -3).should_not == -5
  end

  it "should subtract one number" do
    @my_calculator.subtract(3).should == 3
  end               
  
  it "should subtract no numbers" do
    @my_calculator.subtract.should == 0
  end        
  
  it "should subtract good strings appropriately" do
    @my_calculator.subtract('1', '2').should == -1
  end

  it "should subtract bad strings appropriately" do
    @my_calculator.subtract('fire', 'truck').should == 0
  end                                              
  
  it "should subtract one bad string" do
    @my_calculator.subtract(5, 'fire').should == 5
  end  

  it "should subtract negative value and bad string" do
    @my_calculator.subtract(-3, 'fire').should == -3
  end                                          
  
  it "should subtract decimal numbers" do
    @my_calculator.subtract(3.0, 5.0).should == -2
    @my_calculator.subtract(3.1, 5.0).should == -1.9
  end

  it "should multiply two numbers" do
    @my_calculator.multiply(2, 3).should == 6
    @my_calculator.multiply(2, 3).should_not == 7
  end  

  it "should multiply a postive and a negative number" do       
    @my_calculator.multiply(2, -3).should == -6
    @my_calculator.multiply(2, -3).should_not == -7
  end
  
  it "should multiply one number" do
    @my_calculator.multiply(3).should == 0
  end               
  
  it "should multiply no numbers" do
    @my_calculator.multiply.should == 0
  end   

  it "should multiply good strings appropriately" do
    @my_calculator.multiply('1', '2').should == 2
  end

  it "should multiply bad strings appropriately" do
    @my_calculator.multiply('fire', 'truck').should == 0
  end                                              
  
  it "should multiply one bad string" do
    @my_calculator.multiply(5, 'fire').should == 0
  end    

  it "should multiply negative value and bad string" do
    @my_calculator.multiply(-3, 'fire').should == 0
  end                                          
  
  it "should multiply decimal numbers" do
    @my_calculator.multiply(3.0, 5.0).should == 15
    @my_calculator.multiply(3.1, 5.0).should == 15.5
  end

  it "should divide two numbers" do
    @my_calculator.divide(4, 2).should == 2
    @my_calculator.divide(4, 2).should_not == 3
  end  

  it "should divide a postive and a negative number" do       
    @my_calculator.divide(4, -2).should == -2
    @my_calculator.divide(4, -2).should_not == -3
  end
  
  it "should divide one number" do
    @my_calculator.divide(3).should == 3
  end 

  it "should divide no numbers" do
    @my_calculator.divide.should == 0
  end   

  it "should divide good strings appropriately" do
    @my_calculator.divide('4', '2').should == 2
  end

  it "should handle bad strings appropriately" do
    lambda {@my_calculator.divide('fire', 'truck')}.should raise_error
  end                                              
  
  it "should handle one bad string" do
    lambda {@my_calculator.divide(5, 'fire')}.should raise_error
  end  
  
  it "should divide negative value and bad string" do
    lambda {@my_calculator.divide(-3, 'fire')}.should raise_error
  end                                          
  
  it "should divide decimal numbers" do
    @my_calculator.divide(10.0, 5.0).should == 2
    @my_calculator.divide(15.5, 5.0).should == 3.1
  end

  it "should return the square root" do
    @my_calculator.sqrt(9).should == 3
  end

  it "should reset the calculator to zero " do
    @my_calculator.clear.should == 0
  end
end
  
