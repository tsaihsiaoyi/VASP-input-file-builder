module err
    implicit none
contains
    subroutine noarg
    implicit none
        write(*,'(A)') 'Argument not valid!'
        stop
    end subroutine noarg
end module err