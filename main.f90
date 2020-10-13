program main
    use getargs
    use getfile
    implicit none
    character(:),allocatable::pos,pot
    call get_args(pos,pot)
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
    call getelement(pos)
end program main