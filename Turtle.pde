
class Turtle {
  
  String toDo ;   // L sysytem string
  float  len ;
  float  theta ;
  
  /*  "tt" means a Rotate_Angle by not regarding the Lsys. */
  Turtle(String sen, float ln, float tt) {
    toDo  = sen ;
    len   = ln  ;
    theta = tt  ;
  }
  
  
  // draw walking
  void render() {
    stroke(0 , 175);
    
    for(int i = 0 ; i < toDo.length() ; i++) {
      char c = toDo.charAt(i) ;
      
      if ( c == 'F' || c == 'G' ) {
        line( 0,0 , len,0 ) ;
        translate(len , 0 ) ;
      }
      else if ( c == '+' ) {
        rotate(theta);
      }
      else if ( c == '-' ) {
        rotate(-theta);
      }
      else if ( c == '[' ) { // save current pos and angle
        pushMatrix();
      }
      else if ( c == ']' ) {
        popMatrix();
      }
      
    }
  }
  
  
  void setLen(float l) {
    len = l ;
  }
  
  void changeLen(float percent) {
    len *= percent ;
  }
  
  void setToDo(String sen) {
    toDo = sen ;
  }
  
}
