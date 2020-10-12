program main
    use getargs
    implicit none
    character(:),allocatable::pos,pot
    call get_args(pos,pot)
    print*,'end'
    if (.not.allocated(pos)) then
        allocate(character(8)::pos)
        pos='./POSCAR'
    end if
    if (.not.allocated(pot)) then
        allocate(character(18)::pot)
        pot='~/lib/POT/PAW_PBE/'
    end if
    print*,pot
    print*,pos
end program main