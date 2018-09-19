module zwei

contains
    subroutine foo(a,b)
        implicit none
        integer,intent(in) :: a
        integer,intent(inout) :: b

        print *,a
        print *,b

        b = a + b

    end subroutine foo


    subroutine moo(a,b)
        implicit none
        integer,dimension(2),intent(in) :: a
        integer,dimension(2),intent(inout) :: b

        print *,a
        print *,b

        b = a + b
    end subroutine moo 

end module zwei
