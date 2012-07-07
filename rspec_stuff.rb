value.should eq(1)
value.should be_nil
value.should_not be_nil
value.should be_false
value.should be_blank # ActiveSupport
value.should be_present # ActiveSupport
expect { obj.some_method }.should raise_error StandardError
expect { obj.some_method }.should raise_error