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
  if (pureWord(word).equals(reverse(pureWord(word))))
    return true;
    
  return false;
}

public String reverse(String str)
{
    String sNew = new String();
    for (int i = str.length()-1; i >=0; i--)
    {
        sNew = sNew + str.substring(i, i+1);
    }
    return sNew;
}

public String pureWord(String str)
{
  String sNew2 = new String (str.toLowerCase());
  String sNew3 = new String();
  
  for (int i = 0; i < str.length(); i++)
  {
    String s = sNew2.substring(i, i+1); 
    if (Character.isLetter(str.charAt(i)) == true)
      sNew3 = sNew3 + s;
  }
  return sNew3;
}
