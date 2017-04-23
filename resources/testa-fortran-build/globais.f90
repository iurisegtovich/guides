module globais
      real xexp(3)
      real yexp(3)
      real param(2)
contains
      subroutine load_dados()
      integer i
      do i = 1,3
            print*, 'lendo xexp'
            print*, "xexp",i,"="; read(*,*) xexp(i)
      enddo
      do i = 1,3
            print*, 'lendo yexp'
            print*, "yexp",i,"="; read(*,*) yexp(i)
      enddo
      do i = 1,2
            print*, 'lendo param'
            print*, "param",i,"="
            ; read(*,*) param(i)
      enddo
      end subroutine
end module
