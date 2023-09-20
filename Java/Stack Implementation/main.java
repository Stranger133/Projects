public class main{
   public static void main(String[] args){
       Stack<String> s = new Stack<>();
       s.push("hello");
       System.out.println(s.popAndTop());
       System.out.println(s.isEmpty());
    }
}