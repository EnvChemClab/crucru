program curcruugoku
  implicit none

  integer :: i = 100,  speed = 1

  call crucru(i, speed)
  stop

contains

subroutine crucru(fin, speed)
  implicit none
  integer, intent(in):: fin
  integer, intent(in):: speed
  character(len=1),parameter :: del = achar(13)
  integer :: i, j

  do i=0, fin
    j = mod(i, 4)
    write(*,'(A)', advance='no') del
    if(j == 0) then
      write(*,'(A)', advance='no') "\"
    elseif(j == 1) then
      write(*,'(A)', advance='no') "|"
    elseif(j == 2) then
      write(*,'(A)', advance='no') "/"
    elseif(j == 3) then
      write(*,'(A)', advance='no') "-"
    end if
    call sleep(speed)
  end do
end subroutine crucru

end program crucruugoku
