#class_Eval and instance eval

# 1.9>, define singleton_method

class Myclass
    def self.add_method(method_name, &block)
        self.class_eval do
            define_method(method_name, &block)
        end
    end

    def add_instance_method(method_name, &block)
        self.instance_eval do
            define_singleton_method(method_name, &block)
        end
    end
end

Myclass.add_method("say_hello") do
    puts "Hello from class method"
end

myobj = Myclass.new

myobj.add_instance_method("say_hello") do
    puts "hello from an instance method"
end

Myclass.new.say_hello

myobj.say_hello
