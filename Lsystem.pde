
class Lsystem {
 
  String sentence ;
  Rule[] ruleSet ;
  int generation ;
  
  Lsystem(String axiom , Rule[] r) {
    sentence   = axiom ;  // set a orignal sentence
    ruleSet    = r ;      // initial a RULESset
    generation = 0 ;
  }
  
  void generate() {
    
    StringBuffer nextGen = new StringBuffer() ;
    
    // try matching by One_By_One
    for(int i = 0 ; i < sentence.length() ; i++) {
      char currentChar = sentence.charAt(i) ;
      String replaceStr = "" + currentChar ;
      
      // try to match rules for current char
      for(int j = 0 ; j < ruleSet.length ; j++) {
        char a = ruleSet[j].getA() ;
        if( currentChar == a ) {
          replaceStr = ruleSet[j].getB() ;
          break ;
        }
      }
      nextGen.append(replaceStr);
    }
    
    sentence = nextGen.toString();
    
    generation++ ;
  }
  
  
  String getSentence() {
    return sentence ;
  }
  
  int getGeneration() {
    return generation ;
  }
  
}
