 ! This is the main program for the model

 program main
    use params
    use model_vars

    implicit none


    integer :: i
    ! Iterating variables

    print *, "Loaded parameters and variables"

    call init

    print *, "Data initializes, Starting calculation! ..."

    do i = 2, nt
        call rk4(i-1)
        print *, "Calculation done for t = ",i-1," of ", nt-1
    end do

    print *, "All calculation done! Saving data ..."
    call data_saver
    print *, "All data saved succesfully! Exiting ..."
    
 end program main
