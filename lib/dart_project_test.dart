int calculate() {
  return 6 * 7;
}

nestedFunctions() { // CHECK (nestedFunctions) 38
  for (var i = 0; i < 10; i++) { // SECONDARY (nestedFunctions) +1
    if (i % 2 == 0) { // SECONDARY (nestedFunctions) +2 (incl 1 for nesting)
      return;
    }
    if (i % 3 == 0) { // SECONDARY (nestedFunctions) +2 (incl 1 for nesting)
      continue;
    }
  }

  void level1() { // Doesn't increase complexity but increases nesting of 1
    for (var i = 0; i < 10; i++) { // SECONDARY (nestedFunctions) +2 (incl 1 for nesting)
      if (i % 2 == 0) { // SECONDARY (nestedFunctions) +3 (incl 2 for nesting)
        return;
      }
      if (i % 3 == 0) { // SECONDARY (nestedFunctions) +3 (incl 2 for nesting)
        continue;
      }
    }

    void level2() { // Doesn't increase complexity but increases nesting of 1
      for (var i = 0; i < 10; i++) { // SECONDARY (nestedFunctions) +3 (incl 2 for nesting)
        if (i % 2 == 0) { // SECONDARY (nestedFunctions) +4 (incl 3 for nesting)
          return;
        }
        if (i % 3 == 0) { // SECONDARY (nestedFunctions) +4 (incl 3 for nesting)
          continue;
        }
      }

      void level3() { // Doesn't increase complexity but increases nesting of 1
        for (var i = 0; i < 10; i++) { // SECONDARY (nestedFunctions) +4 (incl 3 for nesting)
          if (i % 2 == 0) { // SECONDARY (nestedFunctions) +5 (incl 4 for nesting)
            return;
          }
          if (i % 3 == 0) { // SECONDARY (nestedFunctions) +5 (incl 4 for nesting)
            continue;
          }
        }
      }
    }
  }
}