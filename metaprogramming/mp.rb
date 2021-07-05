class Person
    attr_accessor :title, :brand, :size

    def initialize(title,brand,size)
        @title = title
        @brand = brand
        @size = size
    end
    def self.create_method(title)
        define_method("#{title}_details") do |args|
            puts "This shoe is a #{self.brand} size #{self.size}"
        end
    end
    define_method :multiply do |*my_args|
        my_args.inject(1,:*)
    end
end

obj = Person.new("nikes","nike","12")

Person.create_method(obj.title)
puts obj.nikes_details("test")

p = Person.new("adidas","adida","11")
puts p.multiply(10,5,2)

Person.class_eval do
    def say_hello
        "HELLO!"
    end        
end

jimmy = Person.new("nikes","nike","12")
puts jimmy.say_hello

Person.instance_eval do
    def human?
        true
    end
end

puts Person.human?


# Even numbers using Procs 
array1 = [1,4,8,3,7,12,76,33,75,91]

arr1 = Proc.new{
    cnt = 0
    array1.select{ |num|
        if num.even?
            cnt = cnt + 1
        end
    }
    puts cnt

}


arr1.call()


# Even Numbers Using Lambda 

arr2 = lambda {
    cnt = 0
    array1.select{|num|
        if num.odd?
            cnt = cnt + 1
        end
    }
    puts cnt
}


arr2.call()



