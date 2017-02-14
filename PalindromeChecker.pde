public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++)
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}

public boolean palindrome(String sWord) {
  sWord = noSpaces(sWord);
  StringBuilder s = new StringBuilder(sWord);
  for(int i = s.length()-1; i >= 0; i--)
    if(!Character.isLetter(s.charAt(i))) s.deleteCharAt(i);
  return s.toString().toLowerCase().equals(s.reverse().toString().toLowerCase());
}

public String noSpaces(String sWord){
  StringBuilder res = new StringBuilder(sWord);
  for(int i = res.indexOf(" "); i != -1; i = res.indexOf(" ")) res.deleteCharAt(i);
  return res.toString();
}
