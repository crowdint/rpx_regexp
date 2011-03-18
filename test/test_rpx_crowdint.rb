require 'test_helper'
require 'mocha'

describe RPXNow do
  it "aliases user_data to user_data!" do
    assert_respond_to RPXNow, :user_data!
    assert_respond_to RPXNow, :user_data
  end

  describe "user_data" do
    before :each do
      @result = { "email" => "david@crowdint.com" }
      @token = MiniTest::Mock.new
    end

    describe "user email matches email_regexp" do
      before :each do
        RPXNow.email_regexp = %r{@crowdint.com}
      end

      it "returns the result" do
        RPXNow.expects(:user_data!).with(@token, {}).returns(@result)
        assert_equal @result, RPXNow.user_data(@token)
      end
    end

    describe "user email doesn't match email_regexp" do
      before :each do
        RPXNow.email_regexp = %r{@google.com}
      end

      it "returns the result" do
        RPXNow.expects(:user_data!).with(@token, {}).returns(@result)
        assert_nil RPXNow.user_data(@token)
      end
    end
  end
end
