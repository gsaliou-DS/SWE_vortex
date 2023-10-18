! Module to initialize the variables for the model

subroutine init

end subroutine int

subroutine meshgrid2d(x, y, x2, y2, nx, ny)

    implicit none

    integer, intent(in) :: nx, ny
    real*8, intent (in) :: x(nx), y(ny)
    real*8, intent(out) :: x2(nx, ny), y2(nx, ny)

    x2 = spread(
