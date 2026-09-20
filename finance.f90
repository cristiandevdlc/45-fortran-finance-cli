program finance
  implicit none
  real(8) :: principal, rate, years, result
  character(len=32) :: arg
  if (command_argument_count() /= 3) then
    print *, 'Uso: finance PRINCIPAL TASA_ANUAL AÑOS'; stop 1
  end if
  call get_command_argument(1, arg); read(arg, *) principal
  call get_command_argument(2, arg); read(arg, *) rate
  call get_command_argument(3, arg); read(arg, *) years
  result = principal * (1.0d0 + rate) ** years
  write(*, '(A,F12.2)') 'Capital final: ', result
  write(*, '(A,F12.2)') 'Rendimiento: ', result - principal
end program finance
