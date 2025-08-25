/^>/ { next }

  {
    for (i=1; i<=length($0); i++) {
      base = substr($0, i, 1)
      if (base == "A") {
        A++
      } else if (base == "T") {
        T++
      } else if (base == "G") {
        G++
      } else if (base == "C") {
        C++
      }
    }
  }

  END {
    print "A:", A
    print "T:", T
    print "G:", G
    print "C:", C
  }
