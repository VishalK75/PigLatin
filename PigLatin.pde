public void setup(){
  String[] lines = {"beast", "dough", "happy", "question", "star", "three", "eagle", "try"};
  System.out.println("There are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++){
    System.out.println(pigLatin(lines[i]));
  }
}

public int findFirstVowel(String word){
  for(int i = 0; i < word.length(); i++){
    if(word.substring(i,i+1).equals("a") || word.substring(i,i+1).equals("e") || word.substring(i,i+1).equals("i") || word.substring(i,i+1).equals("o") || word.substring(i,i+1).equals("u")){
      return 1;
    }
  }
  return -1;
}

public String pigLatin(String word){
  if(findFirstVowel(word) == -1){
    return word + "ay";
  }
  else if(word.substring(0,2).equals("qu")){
    String a = word.substring(0, 2);
    String b = word.substring(2, word.length());
    return b + a + "ay";
  }
  else if(findFirstVowel(word.substring(0,1)) == -1){
    String a = word.substring(0, 1);
    String b = word.substring(1, word.length());
    return b + a + "ay";
  }
  else if(findFirstVowel(word.substring(0,1)) == 1){
    return word + "way";
  }
  else{
    return "ERROR";
  }
}
