BEGIN { now=systime(); lines = 0 }
{
  if (lines++ > 4) {
    if (now == systime()) {
      system("sleep 1")
    }
    now = systime()
    lines = 1
  }
  print
  fflush()
}