require 'test/unit'
require_relative '../customer'

class CustomerTest < Test::Unit::TestCase
    def test_customer_first_name
        customer = Customer.new('John','Smith')
        assert_equal('John',customer.first_name)
    end

    def test_customer_last_name
        customer = Customer.new('John','Smith')
        assert_equal('Smith',customer.last_name)
    end

    def test_customer_full_name
        customer = Customer.new('John','Smith')
        assert_equal('John Smith',customer.full_name)
    end

    def test_customer_update_first_name
        customer = Customer.new('John','Smith')
        customer.update_name('Mary')
        assert_equal('Mary Smith',customer.full_name)
    end

    def test_customer_update_last_name
        customer = Customer.new('John','Smith')
        customer.update_name(nil, 'Jones')
        assert_equal('John Jones',customer.full_name)
    end

    def test_customer_update_full_name
        customer = Customer.new('John','Smith')
        customer.update_name('Mary', 'Jones')
        assert_equal('Mary Jones',customer.full_name)
    end

end
