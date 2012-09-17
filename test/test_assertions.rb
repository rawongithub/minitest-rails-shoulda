require "minitest/autorun"
require "minitest/rails/shoulda/dsl"
require "minitest/rails/shoulda/assertions"

describe "Shoulda Style Assertions" do

  context "an array of values" do

    setup do
      @a = ['abc', 'def', 3]
    end

    [/b/, 'abc', 3].each do |x|
      should "contain #{x.inspect}" do
        assert_raises(MiniTest::Assertion) do
          assert_does_not_contain @a, x
        end
        assert_contains @a, x
        refute_does_not_contain @a, x
      end
    end

    should "not contain 'wtf'" do
      assert_raises(MiniTest::Assertion) {assert_contains @a, 'wtf'}
      assert_does_not_contain @a, 'wtf'
      refute_contains @a, 'wtf'
    end

    should "be the same as another array, ordered differently" do
      assert_same_elements(@a, [3, "def", "abc"])

      assert_raises(MiniTest::Assertion) do
        assert_same_elements(@a, [3, 3, "def", "abc"])
      end
      refute_same_elements(@a, [3, 3, "def", "abc"])

      assert_same_elements([@a, "abc"].flatten, ["abc", 3, "def", "abc"])

      assert_raises(MiniTest::Assertion) do
        assert_same_elements([@a, "abc"].flatten, [3, 3, "def", "abc"])
      end
      refute_same_elements([@a, "abc"].flatten, [3, 3, "def", "abc"])
    end

  end

end
