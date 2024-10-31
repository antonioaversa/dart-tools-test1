// single-line comment
/* multi-line 
comment */
a1() {
  /* comment */
  /*
    // this is not a independent comment, because it's nested
  */
  f1() {
    /// documentation comment 1
    /// documentation comment 2
    nestedFunctions1() { // CHECK (nestedFunctions) 38
    for (var i = 0; i < 10; i++) { // SECONDARY (nestedFunctions) +1
      if (i % 2 == 0) { // SECONDARY (nestedFunctions) +2 (incl 1 for nesting)
        return;
      }
      if (i % 3 == 0) { // SECONDARY (nestedFunctions) +2 (incl 1 for nesting)
        continue;
      }
    }

    /** doc multiline 1 */ 
    /** doc multiline 2 */ /* doc multiline 3 */
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
}
a2() {
  nestedFunctions1() { // CHECK (nestedFunctions) 38
    for (var i = 0; i < 10; i++) { // SECONDARY (nestedFunctions) +1
      if (i % 3 == 0) { // SECONDARY (nestedFunctions) +2 (incl 1 for nesting)
        return;
      }
      if (i % 2 == 0) { // SECONDARY (nestedFunctions) +2 (incl 1 for nesting)
        continue;
      }
    }

    void level1() { // Doesn't increase complexity but increases nesting of 1
      for (var i = 0; i < 10; i++) { // SECONDARY (nestedFunctions) +2 (incl 1 for nesting)
        if (i % 3 == 0) { // SECONDARY (nestedFunctions) +3 (incl 2 for nesting)
          return;
        }
        if (i % 2 == 0) { // SECONDARY (nestedFunctions) +3 (incl 2 for nesting)
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
a3() {
  nestedFunctions1() { // CHECK (nestedFunctions) 38
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
a4() {
  f1() {
    print("a");print("a");print("a");print("a");
    print(42);print(42);print(42);print(42);
    print("c");print("c");print("c");print("c");
    print("d");print("d");print("d");print("d");
    print(42);print(42);print(42);print(42);
    print("f");print("f");print("f");print("f");
    print("g");print("g");print("g");print("g");
    print(true);print(true);print(true);print(true);
    print("i");print("i");print("i");print("i");
    print(["j"]);print(["j"]);print(["j"]);print(["j"]);
    print("k");print("k");print("k");print("k");
    print("l");print("l");print("l");print("l");
    print(42);print(42);print(42);print(42);
    print(42);print(42);print(42);print(42);
    print(42);print(42);print(42);print(42);
    print(42);print(42);print(42);print(42);
    print(42);print(42);print(42);print(42);
    print(42);print(42);print(42);print(42);
    print(42);print(42);print(42);print(42);
    print(42);print(42);print(42);print(42);
    print(42);print(42);print(42);print(42);
    print(42);print(42);print(42);print(42);
    print(42);print(42);print(42);print(42);
    print(42);print(42);print(42);print(42);
    print(42);print(42);print(42);print(42);
    print(42);print(42);print(42);print(42);
    print(42);print(42);print(42);print(42);
    print("a");print("a");print("a");print("a");
    print("b");print("b");print("b");print("b");
    print("c");print("c");print("c");print("c");
    print("d");print("d");print("d");print("d");
    print("e");print("e");print("e");print("e");
    print("f");print("f");print("f");print("f");
    print("g");print("g");print("g");print("g");
    print("h");print("h");print("h");print("h");
    print("i");print("i");print("i");print("i");
    print("j");print("j");print("j");print("j");
    print("k");print("k");print("k");print("k");
    print("l");print("l");print("l");print("l");
  }
}

a5() {
  print("a");print("a");print("a");print("a");
  print(42);print(42);print(42);print(42);
  print("c");print("c");print("c");print("c");
  print("d");print("d");print("d");print("d");
  print(42);print(42);print(42);print(42);
  print("f");print("f");print("f");print("f");
  print("g");print("g");print("g");print("g");
  print(true);print(true);print(true);print(true);
  print("i");print("i");print("i");print("i");
  print(["j"]);print(["j"]);print(["j"]);print(["j"]);
  print("k");print("k");print("k");print("k");
  print("l");print("l");print("l");print("l");
  print(42);print(42);print(42);print(42);
  print(42);print(42);print(42);print(42);
  print(42);print(42);print(42);print(42);
  print(42);print(42);print(42);print(42);
  print(42);print(42);print(42);print(42);
  print(42);print(42);print(42);print(42);
  print(42);print(42);print(42);print(42);
  print(42);print(42);print(42);print(42);
  print(42);print(42);print(42);print(42);
  print(42);print(42);print(42);print(42);
  print(42);print(42);print(42);print(42);
  print(42);print(42);print(42);print(42);
  print(42);print(42);print(42);print(42);
  print(42);print(42);print(42);print(42);
  print(42);print(42);print(42);print(42);
  print("a");print("a");print("a");print("a");
  print("b");print("b");print("b");print("b");
  print("c");print("c");print("c");print("c");
  print("d");print("d");print("d");print("d");
  print("e");print("e");print("e");print("e");
  print("f");print("f");print("f");print("f");
  print("g");print("g");print("g");print("g");
  print("h");print("h");print("h");print("h");
  print("i");print("i");print("i");print("i");
  print("j");print("j");print("j");print("j");
  print("k");print("k");print("k");print("k");
  print("l");print("l");print("l");print("l");
}

a5() {
  print("a");print("a");print("a");print("a");
  print(42);print(42);print(42);print(42);
  print("c");print("c");print("c");print("c");
  print("d");print("d");print("d");print("d");
  print(42);print(42);print(42);print(42);
  print("f");print("f");print("f");print("f");
  print("g");print("g");print("g");print("g");
  print(true);print(true);print(true);print(true);
  print("i");print("i");print("i");print("i");
  print(["j"]);print(["j"]);print(["j"]);print(["j"]);
  print("k");print("k");print("k");print("k");
  print("l");print("l");print("l");print("l");
  print(42);    print(42);    print(42);print(42);
  print(42);    print(42);    print(42);print(42);
  print(42);    print(42);    print(42);print(42);
  print(42);    print(42);    print(42);print(42);
  print(42);    print(42);    print(42);print(42);
  print(42);    print(42);    print(42);print(42);
  print(42);    print(42);    print(42);print(42);
  print(42);    print(42);    print(42);print(42);
  print(42);    print(42);    print(42);print(42);
  print(42);    print(42);    print(42);print(42);
  print(42);    print(42);    print(42);print(42);
  print(42);    print(42);    print(42);print(42);
  print(42);    print(42);    print(42);print(42);
  print(42);    print(42);    print(42);print(42);
  print(42);    print(42);    print(42);print(42);
  print("a");   print("a");
  print("a");print("a");
  print("b");   print("b");
  print("b");print("b");
  print("c");   print("c");
  print("c");print("c");
  print("d");   print("d");
  print("d");print("d");
  print("e");   print("e");
  print("e");print("e");
  print("f");   print("f");
  print("f");print("f");
  print("g");   print("g");
  print("g");print("g");
  print("h");   print("h");
  print("h");print("h");
  print("i");   print("i");
  print("i");print("i");
  print("j");   print("j");
  print("j");print("j");
  print("k");   print("k");
  print("k");print("k");
  print("l");   print("l");
  print("l");print("l");
}

class Class1 {

  nestedFunctions1() { // CHECK (nestedFunctions) 38
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

  nestedFunctions2() { // CHECK (nestedFunctions) 38
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