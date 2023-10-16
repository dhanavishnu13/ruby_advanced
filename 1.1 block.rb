#define_method

class Myclass
    def self.create_new_method(method_name, &block)
        define_method(method_name, &block)
    end
end

Myclass.create_new_method("say_hello") do
    puts "hello from block"
end

Myclass.new.say_hello