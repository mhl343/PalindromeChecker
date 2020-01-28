public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
String newWord=onlyLetters(word);
newWord=noCapitals(newWord);

String sNew=reverse(word);
sNew=onlyLetters(sNew);
sNew=noCapitals(sNew);

if (sNew.equals(newWord)){
  return true;
  
}
  return false;
  
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i=str.length()-1;i>=0;i--){
      sNew+=str.substring(i,i+1);
    }
    return sNew;
}
public String onlyLetters(String str)
{
  String sNew = new String();
  for (int i=0;i<str.length();i++){
    if (Character.isLetter(str.charAt(i))){
      sNew+=str.charAt(i);
    }
  }
  return sNew;
}
public String noCapitals (String str)
{
  return (str.toLowerCase());
}
