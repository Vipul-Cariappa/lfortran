program intrinsics_170
    use iso_fortran_env, only: sp => real32, dp => real64
    implicit none
    integer, parameter :: i1 = exponent(1.0_sp)
    integer, parameter :: i2 = exponent(1.32_dp)
    integer, parameter :: i3(3) = exponent([3.121_sp, 4.1_sp, 5.32_sp])
    integer, parameter :: i4(3) = exponent([3.121_dp, 4.1_dp, 5.32_dp])
    real(sp) :: x
    real(dp) :: y
    real(sp) :: arr1(3) = [3.121_sp, 4.1_sp, 5.32_sp]
    real(dp) :: arr2(3) = [3.121_dp, 4.1_dp, 5.32_dp]
    x = 4.1
    y = 4.1_dp

    print *, i1
    if (i1 /= 1) error stop
    print *, i2
    if (i2 /= 1) error stop
    print *, i3
    if (any(i3 /= [2, 3, 3])) error stop
    print *, i4
    if (any(i4 /= [2, 3, 3])) error stop

    print *, exponent(x)
    if (exponent(x) /= 3) error stop
    print *, exponent(4.1_dp)
    if (exponent(4.1_dp) /= 3) error stop
    print *, exponent(y)
    if (exponent(y) /= 3) error stop

    x = 0.5
    y = 0.5_dp

    print *, exponent(x)
    if (exponent(x) /= 0) error stop

    print *, exponent(0.5_dp)
    if (exponent(0.5_dp) /= 0) error stop

    print *, exponent(y)
    if (exponent(y) /= 0) error stop

    print *, exponent(0.5)
    if (exponent(0.5) /= 0) error stop

    x = -12.94
    y = -12.94_dp

    print *, exponent(x)
    if (exponent(x) /= 4) error stop

    print *, exponent(-12.94_dp)
    if (exponent(-12.94_dp) /= 4) error stop

    print *, exponent(y)
    if (exponent(y) /= 4) error stop

    print *, exponent(-12.94)
    if (exponent(-12.94) /= 4) error stop

    x = 1e+6_sp
    y = 1e+10_dp

    print *, exponent(x)
    if (exponent(x) /= 20) error stop

    print *, exponent(1e+10_dp)
    if (exponent(1e+10_dp) /= 34) error stop

    print *, exponent(y)
    if (exponent(y) /= 34) error stop

    print *, exponent(1e+6)
    if (exponent(1e+6) /= 20) error stop

    x = -1e+6_sp
    y = -1e+10_dp

    print *, exponent(x)
    if (exponent(x) /= 20) error stop

    print *, exponent(-1e+10_dp)
    if (exponent(-1e+10_dp) /= 34) error stop

    print *, exponent(y)
    if (exponent(y) /= 34) error stop

    print *, exponent(-1e+6)
    if (exponent(-1e+6) /= 20) error stop

    x = 1e-6_sp
    y = 1e-10_dp

    print *, exponent(x)
    if (exponent(x) /= -19) error stop

    print *, exponent(1e-10_dp)
    if (exponent(1e-10_dp) /= -33) error stop

    print *, exponent(y)
    if (exponent(y) /= -33) error stop

    print *, exponent(1e-6)
    if (exponent(1e-6) /= -19) error stop

    x = 0.0
    y = 0.0_dp

    print *, exponent(x)
    if (exponent(x) /= 0) error stop

    print *, exponent(0.0_dp)
    if (exponent(0.0_dp) /= 0) error stop

    print *, exponent(y)
    if (exponent(y) /= 0) error stop

    print *, exponent(0.0)
    if (exponent(0.0) /= 0) error stop

    print *, exponent(3.99)
    if (exponent(3.99) /= 2) error stop

    print *, exponent(3.99_dp)
    if (exponent(3.99_dp) /= 2) error stop

    x = 3.99
    y = 3.99_dp

    print *, exponent(x)
    if (exponent(x) /= 2) error stop

    print *, exponent(y)
    if (exponent(y) /= 2) error stop

    print *, exponent(7.99)
    if (exponent(7.99) /= 3) error stop

    print *, exponent(7.99_dp)
    if (exponent(7.99_dp) /= 3) error stop

    x = 7.99
    y = 7.99_dp

    print *, exponent(x)
    if (exponent(x) /= 3) error stop

    print *, exponent(y)
    if (exponent(y) /= 3) error stop

    print *, exponent(8.1)
    if (exponent(8.1) /= 4) error stop

    print *, exponent(8.1_dp)
    if (exponent(8.1_dp) /= 4) error stop

    x = 8.1
    y = 8.1_dp

    print *, exponent(x)
    if (exponent(x) /= 4) error stop

    print *, exponent(y)
    if (exponent(y) /= 4) error stop

    print *, exponent(2.0)
    if (exponent(2.0) /= 2) error stop

    print *, exponent(2.0_dp)
    if (exponent(2.0_dp) /= 2) error stop

    x = 2.0
    y = 2.0_dp

    print *, exponent(x)
    if (exponent(x) /= 2) error stop

    print *, exponent(y)
    if (exponent(y) /= 2) error stop

    print *, exponent(8.0)
    if (exponent(8.0) /= 4) error stop

    print *, exponent(8.0_dp)
    if (exponent(8.0_dp) /= 4) error stop

    x = 8.0
    y = 8.0_dp

    print *, exponent(x)
    if (exponent(x) /= 4) error stop

    print *, exponent(y)
    if (exponent(y) /= 4) error stop

    print *, exponent(0.1)
    if (exponent(0.1) /= -3) error stop

    print *, exponent(0.1_dp)
    if (exponent(0.1_dp) /= -3) error stop

    x = 0.1
    y = 0.1_dp

    print *, exponent(x)
    if (exponent(x) /= -3) error stop

    print *, exponent(y)
    if (exponent(y) /= -3) error stop

    print *, exponent(0.01)
    if (exponent(0.01) /= -6) error stop

    print *, exponent(0.01_dp)
    if (exponent(0.01_dp) /= -6) error stop

    x = 0.01
    y = 0.01_dp

    print *, exponent(x)
    if (exponent(x) /= -6) error stop

    print *, exponent(y)
    if (exponent(y) /= -6) error stop

    print *, exponent(0.001)
    if (exponent(0.001) /= -9) error stop

    print *, exponent(0.001_dp)
    if (exponent(0.001_dp) /= -9) error stop

    x = 0.001
    y = 0.001_dp

    print *, exponent(x)
    if (exponent(x) /= -9) error stop

    print *, exponent(y)    
    if (exponent(y) /= -9) error stop

    print *, exponent(-3.99)
    if (exponent(-3.99) /= 2) error stop

    print *, exponent(-3.99_dp)
    if (exponent(-3.99_dp) /= 2) error stop

    x = -3.99
    y = -3.99_dp

    print *, exponent(x)
    if (exponent(x) /= 2) error stop

    print *, exponent(y)
    if (exponent(y) /= 2) error stop

    print *, exponent(-7.99)
    if (exponent(-7.99) /= 3) error stop

    print *, exponent(-7.99_dp)
    if (exponent(-7.99_dp) /= 3) error stop

    x = -7.99
    y = -7.99_dp

    print *, exponent(x)
    if (exponent(x) /= 3) error stop

    print *, exponent(y)
    if (exponent(y) /= 3) error stop

    print *, exponent(-8.1)
    if (exponent(-8.1) /= 4) error stop

    print *, exponent(-8.1_dp)
    if (exponent(-8.1_dp) /= 4) error stop

    x = -8.1
    y = -8.1_dp

    print *, exponent(x)
    if (exponent(x) /= 4) error stop

    print *, exponent(y)
    if (exponent(y) /= 4) error stop

    print *, exponent(-2.0)
    if (exponent(-2.0) /= 2) error stop

    print *, exponent(-2.0_dp)
    if (exponent(-2.0_dp) /= 2) error stop

    x = -2.0
    y = -2.0_dp

    print *, exponent(x)
    if (exponent(x) /= 2) error stop

    print *, exponent(y)
    if (exponent(y) /= 2) error stop

    print *, exponent(-8.0)
    if (exponent(-8.0) /= 4) error stop

    print *, exponent(-8.0_dp)
    if (exponent(-8.0_dp) /= 4) error stop

    x = -8.0
    y = -8.0_dp

    print *, exponent(x)
    if (exponent(x) /= 4) error stop

    print *, exponent(y)
    if (exponent(y) /= 4) error stop

    print *, exponent(-0.1)
    if (exponent(-0.1) /= -3) error stop

    print *, exponent(-0.1_dp)
    if (exponent(-0.1_dp) /= -3) error stop

    x = -0.1
    y = -0.1_dp

    print *, exponent(x)
    if (exponent(x) /= -3) error stop

    print *, exponent(y)
    if (exponent(y) /= -3) error stop

    print *, exponent(-0.01)
    if (exponent(-0.01) /= -6) error stop

    print *, exponent(-0.01_dp)
    if (exponent(-0.01_dp) /= -6) error stop

    x = -0.01
    y = -0.01_dp

    print *, exponent(x)
    if (exponent(x) /= -6) error stop

    print *, exponent(y)
    if (exponent(y) /= -6) error stop

    print *, exponent(-0.001)
    if (exponent(-0.001) /= -9) error stop

    print *, exponent(-0.001_dp)
    if (exponent(-0.001_dp) /= -9) error stop

    x = -0.001
    y = -0.001_dp

    print *, exponent(x)
    if (exponent(x) /= -9) error stop

    print *, exponent(y)    
    if (exponent(y) /= -9) error stop

    print *, exponent(arr1)
    if (any(exponent(arr1) /= [2, 3, 3])) error stop
    print *, exponent(arr2)
    if (any(exponent(arr2) /= [2, 3, 3])) error stop

    print *, kind(exponent(1.0_sp))
    if (kind(exponent(1.0_sp)) /= 4) error stop
    print *, kind(exponent(1.0_dp))
    if (kind(exponent(1.0_dp)) /= 4) error stop

end program
