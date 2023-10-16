 #Which can be useful in situations where the name of the method is determined at runtime


 class Myclass
    def say_hello
        puts "Hello world"
    end
end

method_name="say_hello"

Myclass.new.send(method_name)