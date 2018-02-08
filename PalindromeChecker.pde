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
  String sNew = new String();
  for (int i = 0; i < word.length(); i++)
  {
    if (Character.isLetter(word.charAt(i))) {sNew = sNew + Character.toLowerCase(word.charAt(i));}
  }
  for (int i = 0; i < sNew.length(); i++)
  {
    if (sNew.charAt(i) != reverse(sNew).charAt(i)) {return false;}
  }
  return true;
}
public String reverse(String str)
{
    String sNew = new String();
    String sNew2 = new String();
    for (int i = 0; i < str.length(); i++)
    {
      if (Character.isLetter(str.charAt(i))) {sNew = sNew + Character.toLowerCase(str.charAt(i));}
    }
    for (int i = 0; i < sNew.length(); i++) {sNew2 = sNew2 + sNew.charAt(sNew.length()-1-i);}
    return sNew2;
}


