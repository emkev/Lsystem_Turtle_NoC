
/* from 20 Feb 2018 
   Study L system program practice
   The Nature of Code by Daniel Shiffman 
   Plus CBofN(Gary William Flake) 's code practice
*/

Lsystem lsys ;
Turtle turtle ;
int counter = 0 ;

int    AnglePara ;
String AxiomPara ; 
int    ruleNum ;


void setup() {  
  
  size(800 , 400) ;
  
  /* Bush :
     Angle:25 , Axiom:F , Rule(s):F=FF+[+F-F-F]-[-F+F+F]
   */
  /* 
    AnglePara = 25 ;
    AxiomPara = "F" ;
    ruleNum   = 1 ;
    Rule[] ruleSet = new Rule[ruleNum] ;
    ruleSet[0] = new Rule( 'F'  ,  "FF+[+F-F-F]-[-F+F+F]" ) ;
  */
  
  
  /* Algae : */
  /*
    AnglePara = 25 ;
    AxiomPara = "B" ;
    ruleNum   = 2 ;
    Rule[] ruleSet = new Rule[ruleNum] ;
    ruleSet[0] = new Rule( 'B' , "F[-B]+B" ) ;
    ruleSet[1] = new Rule( 'F' , "FF"      ) ;    
  */
 
 
  /* Weed : 
     Angle:25 , Axiom:F , Rule(s):F=F[-F]F[+F]F
  */
  AnglePara = 25 ;
  AxiomPara = "F" ;
  ruleNum   = 1 ;
  Rule[] ruleSet = new Rule[ruleNum] ;
  ruleSet[0] = new Rule( 'F'  ,  "F[-F]F[+F]F" ) ;
  
  
  // Initial..
  lsys = new Lsystem( AxiomPara , ruleSet ) ;
  turtle = new Turtle(lsys.getSentence(), height/3, radians(AnglePara));
  
  
  smooth();
  
}


void draw() {
  background(255);
  fill(0);
  
  translate(width/2 , height);
  rotate(-PI/2);
  
  turtle.render();
  
  //println(lsys.getSentence());
  
  noLoop();
}


void mousePressed() {
  
  if(counter < 100) {
    
    pushMatrix();
    lsys.generate();
    
    /* "Sentence" is a Gene_type 
       "Turtle"   is a Expression_type  */
    turtle.setToDo(lsys.getSentence());  
    turtle.changeLen(0.5);
    
    popMatrix();
    
    redraw();
    
    counter++ ;
  }
  
}


