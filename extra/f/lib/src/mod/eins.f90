module eins
    implicit none
contains
    integer function calc(x,y)
        implicit none
        integer x,y

        calc = x * y
    end function calc
end module eins
