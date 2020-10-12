module getargs
    use help
    use err
    implicit none
contains
    subroutine get_args(pos,pot)
        character(:),allocatable::pos,pot,str
        integer::i,len,stat
        logical::jump=.false.
        do i=1,4
            if (jump) then
                jump=.false.
                cycle
            end if
            call get_command_argument(number=i,length=len,status=stat)
            if (stat>0) then
                exit
            else
                allocate(character(len)::str)
                call get_command_argument(number=i,value=str)
                select case(str)
                case('-s')
                    call get_file(i+1,pos)
                    jump=.true.
                case('-t')
                    call get_file(i+1,pot)
                    jump=.true.
                case default
                    call noarg
                end select
                deallocate(str)
            end if
        enddo
    end subroutine get_args

    subroutine get_file(n,str)
        character(:),allocatable::str
        integer::len,stat,n
        call get_command_argument(number=n,length=len,status=stat)
        if (stat>0) then
            call noarg
        else
            allocate(character(len)::str)
            call get_command_argument(number=n,value=str)
            select case(str)
            case('-t','-s')
                call noarg
            end select
        end if
    end subroutine get_file

end module getargs