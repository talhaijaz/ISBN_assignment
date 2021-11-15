def generate_ISBN(no)
    isbn_no = 0

    no.to_s.split('').each_with_index do |digit, index|
        if index % 2 > 0
            isbn_no += digit.to_i * 3
        else
            isbn_no += digit.to_i * 1
        end
    end
    digit = 10 - isbn_no % 10
    digit = 0 if digit == 10
    
    no * 10 + digit
end