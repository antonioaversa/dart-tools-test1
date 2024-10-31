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
    nestedFunctions1() {
      for (var i = 0; i < 10; i++) {
        if (i % 2 == 0) {
          return;
        }
        if (i % 3 == 0) {
          continue;
        }
      }
    }

    /** doc multiline 1 */ 
    /** doc multiline 2 */ /* doc multiline 3 */
    void level1() {
      for (var i = 0; i < 10; i++) {
        if (i % 2 == 0) {
          return;
        }
        if (i % 3 == 0) {
          continue;
        }
      }
    }
  }
}