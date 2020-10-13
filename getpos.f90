module getfile
    implicit none
contains
    
    subroutine getelement(pos)
    implicit none
    character(*)::pos
    character(100)::str
    integer::i,size
    open(unit=10,file=pos)
    do i=1,5
        read(10,"(A)")
    enddo
    read(10,"(A)") str
    101 print*,str,size
    100 stop
    end subroutine getelement
end module getfile