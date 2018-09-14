#
# rename testthree to testfour

@pydef mutable struct Testfour
    function __init__(self)
        self[:x] = 5
    end

    function display(self)
        println("TestFour Class...")
    end

    calc(self) = self[:x] * self[:x]

    hello(self, str::String) = "Hello $str World !!"

end
