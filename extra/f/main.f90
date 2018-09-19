program main
    use eins
    use zwei
    implicit none
    integer x,y
    integer z
    integer,dimension(2) :: a,b

    print *,'=== by subroutine'
    call display()

    print *,'=== by eins module'
    x = 3
    y = 4

    z = calc(x,y)

    print *,x,y
    print *,z

    print *,'=== by zwei module'
    x = 7
    y = 8

    print *,'--- foo'
    call foo(x,y)
    print *,x,y

    a = (/ 2, 4 /)
    b = (/ 2, 5 /)

    print *,'--- moo'
    call moo(a,b)
    print *,b

end program main
