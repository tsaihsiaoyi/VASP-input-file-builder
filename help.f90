module help
    implicit none
    
contains
    subroutine helpdoc
        write(*,'(3(A,/,4X,A,/),4X,A,/)') &
        'NAME',&
        'vifb - A program that generator VASP input file.',&
        'SYNOPSIS',&
        'vifb [-s] POSCAR [-t] POT_DIR',&
        'OPTIONS',&
        '-s    POSCAR''s address, default is ./POSCAR',&
        '-t    POTCAR''s directory, default is ~/lib/POT/PAW_PBE'
    end subroutine helpdoc
end module help