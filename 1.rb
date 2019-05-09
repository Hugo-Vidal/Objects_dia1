class Anything
    attr_reader :a
    def foo(a=5)
        @a = a
    end

    def bar
        @a += 1
        puts @a
    end
end
any = Anything.new
any.foo
any.bar
any.a