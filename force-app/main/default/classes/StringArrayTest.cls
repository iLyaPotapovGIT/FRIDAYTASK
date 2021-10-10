public class StringArrayTest  {
 public static List<String> generateStringArray(Integer numberItems)
 {
  List<String> stringArray = new List<String>();   
  for (Integer i=0;i<numberItems;i++)
  {
    stringArray.add('Test'+' '+i);
  }
  return stringArray;
 } 
}