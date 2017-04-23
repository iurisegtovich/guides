program test_gsl
!
!=============================================================================================================================
!
  implicit none
!
!=============================================================================================================================
!
  INTERFACE
    REAL(c_double) FUNCTION DCHIIN(a,b) BIND(C,NAME='gsl_cdf_chisq_Pinv')
      USE,INTRINSIC :: iso_c_binding
      REAL(c_double),VALUE :: a,b
    END FUNCTION DCHIIN
  END INTERFACE
!
!=============================================================================================================================
!
  INTERFACE
    REAL(c_double) FUNCTION DCHIDF(a,b) BIND(C,NAME='gsl_cdf_chisq_P')
      USE,INTRINSIC :: iso_c_binding
      REAL(c_double),VALUE :: a,b
    END FUNCTION DCHIDF
  END INTERFACE
!
!=============================================================================================================================
!
  INTERFACE
    REAL(c_double) FUNCTION DTIN(a,b) BIND(C,NAME='gsl_cdf_tdist_Pinv')
      USE,INTRINSIC :: iso_c_binding
      REAL(c_double),VALUE :: a,b
    END FUNCTION DTIN
  END INTERFACE
!
!=============================================================================================================================
!
  INTERFACE
    REAL(c_double) FUNCTION DFIN(a,b,c) BIND(C,NAME='gsl_cdf_fdist_P')
      USE,INTRINSIC :: iso_c_binding
      REAL(c_double),VALUE :: a,b,c
    END FUNCTION DFIN
  END INTERFACE
!
!=============================================================================================================================
!
real(8) :: A=1.d0
real(8) :: B=2.d0
real(8) :: C=3.d0
  print*, DFIN(A,B,C)
end program
