require 'spec_helper'

describe 'right_meow' do
  describe "Time#meow" do
    it "matches at the same instant" do
      meow = Time.meow
      now = Time.now
      expect(now.to_i).to eq(meow.to_i)
    end

    it "does not match at a different instant" do
      meow = Time.meow
      sleep(1)
      now = Time.now
      expect(now.to_i).not_to eq(meow.to_i)
    end
  end

  describe "DateTime#meow" do
    it "matches at the same instant" do
      meow = DateTime.meow
      now = DateTime.now
      expect(now.to_time.to_i).to eq(meow.to_time.to_i)
    end

    it "does not match at a different instant" do
      meow = DateTime.meow
      sleep(1)
      now = DateTime.now
      expect(now.to_time.to_i).not_to eq(meow.to_time.to_i)
    end
  end

  describe "#not_meow" do
    it "sleeps n seconds" do
      pre = Time.now
      not_meow(1)
      post = Time.now
      expect(post.to_i).to eq(pre.to_i + 1)
    end
  end
end