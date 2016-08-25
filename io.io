search := "github so it happened" 

file := File clone openForReading("happened.txt") 
file foreachLine(lineno, line,
  res := line containsAnyCaseSeq(search)
  if (res, 
    writeln("Found ", search, " on line #", lineno)
  )
) 
