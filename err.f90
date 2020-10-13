module err
    use help
    implicit none
contains
    subroutine noarg
        write(*,'(A,/)') 'Argument not valid!'
        call helpdoc
    end subroutine noarg
end module err