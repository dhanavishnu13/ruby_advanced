class Myclass
    def self.create_new_method(method_name)
        define_method(method_name) do
            puts "hello from #{method_name}"
        end
    end
end

Myclass.create_new_method(:hello_world)

Myclass.new.hello_world