require_relative "../lib/boolean2"
require "minitest/autorun"

describe Boolean2 do
  describe "true" do
    it "is a Boolean2" do
      assert_equal true, true.is_a?(Boolean2)
    end

    it "returns itself for #to_boolean2" do
      assert_equal true, true.to_boolean2
    end

    it "returns true when given to Boolean2.new" do
      assert_equal true, Boolean2.new(true)
    end
  end

  describe "false" do
    it "is a Boolean2" do
      assert_equal true, false.is_a?(Boolean2)
    end

    it "returns itself for #to_boolean2" do
      assert_equal false, false.to_boolean2
    end

    it "returns false when given to Boolean2.new" do
      assert_equal false, Boolean2.new(false)
    end
  end

  describe "nil" do
    it "is not a Boolean2" do
      assert_equal false, nil.is_a?(Boolean2)
    end

    it "returns false for #to_boolean2" do
      assert_equal false, nil.to_boolean2
    end

    it "returns false when given to Boolean2.new" do
      assert_equal false, Boolean2.new(nil)
    end
  end

  describe "Object" do
    it "is not a Boolean2" do
      assert_equal false, Object.new.is_a?(Boolean2)
    end

    it "returns true for #to_boolean2" do
      assert_equal true, Object.new.to_boolean2
    end

    it "returns true when given to Boolean2.new" do
      assert_equal true, Boolean2.new(Object.new)
    end
  end
end

