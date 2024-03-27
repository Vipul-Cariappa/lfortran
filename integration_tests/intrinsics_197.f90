program intrinsics_197
    use, intrinsic :: iso_fortran_env, only: dp => real64, sp => real32
    real(dp) :: x(40)
    real(dp) :: expected(40)
    integer :: i

    real :: y(28)
    real :: expected_y(28)

    x = [9.98600559790084e307_dp,9.98800479820072e307_dp,9.9900039985006e307_dp,9.99200319880048e307_dp, &
          1036.462826483388272_dp, 1.7197292882018389_dp, 10.2368267382872828_dp, 0.17197292882018389_dp, &
          152.67283628_dp, 632.92729728_dp, 1.2728272919_dp, 1.265228272919_dp, &
          3.229995504589554d-153, 1.9201212555874555d-153, 6.809537363878625d-155, 5.690181373063991d-154, &
          29.82407037185126_dp, 35.2459016393_dp, 46.2634946_dp, 24.7740903638_dp, &
          15.8978408636372_dp, 8.801468212714914_dp, 8.798080767692923_dp, 8.791287884846061575_dp, &
          0.6635324560331525_dp, 0.6633115808685429_dp, 0.6630906573122884_dp, 0.6628696853957159_dp, &
          0.5042349934053336_dp, 0.5041796815747646_dp, 0.5041242821300232_dp, 0.50401322049655_dp, &
          1.3994502099160337d-303, 1.199530179928029d-303, 9.99610149940024d-304, 5.9977008996401444d-304, &
          499.19032387045183_dp, 499.2802878848461_dp, 499.3702518992403_dp, 499.5501799280288_dp]

    expected = [ 7.9836428649154907E-155_dp,-7.0751499885966513E-155_dp, 4.4632457212022053E-155_dp, -7.7717941781117305E-156_dp, & 
        -2.1476418943648812E-002_dp,  0.45752410314844527_dp, -3.6134118144921369E-003_dp, -1.1810118244863275_dp, &
          5.7258225070763252E-002_dp, -1.9980991452871046E-002_dp,  0.27136794388300378_dp,  0.26703177612919299_dp, &
         -223.60567312692987_dp,        -223.93677423698244_dp,    -226.06259684300088_dp,     -224.71105113517498_dp, &
         -0.10066167676587488_dp,        1.3491498398094682E-002_dp,  0.11694884231468369_dp,    -0.14624416810911833_dp, &
          0.11351877059712150_dp,        0.26579485639687389_dp,     0.26597878435358130_dp,      0.26633862894209037_dp, &
         -0.23184540282244587_dp,       -0.23210076724614023_dp,    -0.23235626136445603_dp,    -0.23261188523008530_dp, &
         -0.43830934413197298_dp,       -0.43839015710774321_dp,    -0.43847110563441455_dp,    -0.43863340934604428_dp, &
        -444.01882239162842_dp,        -444.11695700415237_dp,     -444.23302545068867_dp,     -444.55822289723721_dp, &
          3.1963700362099140E-002_dp,   3.0400895527807309E-002_dp,  2.8592509948203688E-002_dp,   2.4299538193472119E-002_dp ]


    do i = 1, size(x)
        print *, bessel_y0(x(i)), "i = ", i
        if (abs(bessel_y0(x(i)) - expected(i)) > 1e-12) error stop
    end do


    y = [1036.462826483388272_sp, 1.7197292882018389_sp, 10.2368267382872828_sp, 0.17197292882018389_sp, &
          152.67283628_sp, 632.92729728_sp, 1.2728272919_sp, 1.2828272919_sp, &
          29.82407037185126_sp, 35.2459016393_sp, 46.2634946_sp, 24.7740903638_sp, &
          15.8978408636372_sp, 8.801468212714914_sp, 8.798080767692923_sp, 8.791287884846061575_sp, &
          0.6635324560331525_sp, 0.6633115808685429_sp, 0.6630906573122884_sp, 0.6628696853957159_sp, &
          0.5042349934053336_sp, 0.5041796815747646_sp, 0.5041242821300232_sp, 0.50401322049655_sp, &
          499.19032387045183_sp, 499.2802878848461_sp, 499.3702518992403_sp, 499.5501799280288_sp]

    expected_y = [-2.1476418943648812E-002_sp, 0.45752410314844527_sp, -3.6134118144921369e-3_sp, -1.1810118244863275_sp, &
                5.72582334E-02_sp, -1.99812334E-02_sp, 0.271367937_sp, 0.277011007_sp, &
                -0.100661635_sp, 1.34913139E-02_sp, 0.116948858_sp, -0.146244213_sp, &
                0.113518834_sp, 0.265794873_sp, 0.265978813_sp, 0.266338646_sp, &
                -0.231845424_sp, -0.232100740_sp, -0.232356280_sp, -0.232611880_sp, &
                -0.438309371_sp, -0.438390195_sp, -0.438471109_sp, -0.438633382_sp, &
                3.19634713E-02_sp, 3.04011665E-02_sp, 2.85927802E-02_sp, 2.42997743E-02_sp]

    do i = 1, size(y)
        print *, bessel_y0(y(i)), "i = ", i
        if (abs(bessel_y0(y(i)) - expected_y(i)) > 1e-6) error stop
    end do
end program
