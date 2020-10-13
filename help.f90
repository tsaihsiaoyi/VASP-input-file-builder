module help
    implicit none
    
contains
    subroutine helpdoc
        write(*,'(2(A,/,4X,A,/),4X,2(A,/),3(4X,A,/))') &
        'NAME',&
        'vifb - A program that generator VASP input file.',&
        'SYNOPSIS',&
        'vifb [-s] POSCAR [-t] POT_DIR',&
        'vifb -h',&
        'OPTIONS',&
        '-s    POSCAR''s address, default is ./POSCAR',&
        '-t    POTCAR''s directory, default is ~/lib/POT/PAW_PBE',&
        '-h    display this help and exit'
        stop
    end subroutine helpdoc
end module help