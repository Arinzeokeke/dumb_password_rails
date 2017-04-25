require "spec_helper"
require 'active_model'

class TestUser < TestModel
  validates :password, :dumb_password => true
end

class TestUserWithMessage < TestModel
  validates :password, dumb_password:  {message: "Hello World"}
end

RSpec.describe DumbPasswordRails do
  it "has a version number" do
    expect(DumbPasswordRails::VERSION).not_to be nil
  end

    describe "validation" do

    context "given the common passwords" do
      [
        "voyeur", "vsegda", "vulcan", "vvvv", "vvvvvv", "w_pass", "waffle", "wagner", "walker", "wallace", "wallet", "walleye", "wally", "walmart", "walnut", "walrus", "walter", "walton", "wanderer", "wang", "wanker", "wanking", "wanted", "wapbbs", "warcraft", "wareagle", "warez", "warhamme", "warhammer", "warlock", "warlord", "warner", "warning", "warren", "warrior", "warrior1", "warriors", "warthog", "wasabi", "washburn", "washingt", "washington", "wasser", "wassup", "wasted", "watch", "watcher", "water", "water1", "waterboy", "waterloo", "waters", "watford", "watson", "wayne", "wealth", "weare138", "wearing", "weasel", "weather", "weaver", "webber", "webhompas", "webmaste", "webmaster", "webster", "wedding", "weed", "weed420", "weekend", "weezer", "weiner"
        ].each do |password|

        it "#{password.inspect} should not be valid" do
          expect(TestUser.new(:password => password)).not_to be_valid
        end

        it "#{password.inspect} should fail the class tester" do
          expect(DumbPasswordValidator.dumb?(password)).to be_truthy
        end

      end
    end

    context "given the uncommon passwords" do
      [
        'gggfggfdd', 'gtrdswszz'].each do |password|

        it "#{password.inspect} should  be valid" do
          expect(TestUser.new(:password => password)).to be_valid
        end

        it "#{password.inspect} should pass the class tester" do
          expect(DumbPasswordValidator.dumb?(password)).to be_falsy
        end

      end
    end

  end
end
