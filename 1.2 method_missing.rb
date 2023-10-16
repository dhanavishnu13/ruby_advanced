#method missing

class Myclass

    def method_missing(method_name, *arguments, &block)
        if method_name.to_s.start_with?("say_")
            puts method_name.to_s.split("_").last.capitalize
        else
            super
        end
    end
end

Myclass.new.say_hello