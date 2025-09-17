class PhoneBook
    def initialize
        # Store contacts here 
        @contacts = {}
        # Store listed numbers 
        @public_numbers = {}
    end

    def add(name, number, is_listed)
        return false if @contacts.key?(name)

    
        return false unless number =~ /^\d{3}-\d{3}-\d{4}$/

    
        if is_listed && @public_numbers.key?(number)
            return false
        end

    
        @contacts[name] = { number: number, listed: is_listed }
        @public_numbers[number] = name if is_listed
        true

    end

    def lookup(name)
        entry = @contacts[name]
        return nil unless entry && entry[:listed]
        entry[:number]
    end

    def lookupByNum(number)
        name = @public_numbers[number]
        name ? name : nil
    end

    def namesByAc(areacode)
        @contacts.select { |_, entry| entry[:number].start_with?(areacode) }
            .keys
    end
end
