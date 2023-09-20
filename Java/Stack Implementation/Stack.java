import java.util.*;
public class Stack<E>{
   private List<E> ls = new LinkedList<>();
   public void push(E e){
      ls.add(0,e);
   }
   public E top(){
      return ls.get(0);
   }
   public void pop(){
      ls.remove(0);
   }
   public E popAndTop(){
      return ls.remove(0);
   }
   public boolean isEmpty(){
      return ls.isEmpty();
   }
   public String toString(){
      return ls.toString();
   }
}