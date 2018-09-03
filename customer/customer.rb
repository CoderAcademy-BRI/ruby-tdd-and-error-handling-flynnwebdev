class Customer

    attr_accessor :first_name,:last_name
    def initialize(first,last)
        @first_name=first
        @last_name=last
    end

    def full_name
        "#{first_name} #{last_name}"
    end

    def update_name(first, last=nil)
        @first_name = first if first
        @last_name = last if last
    end

end