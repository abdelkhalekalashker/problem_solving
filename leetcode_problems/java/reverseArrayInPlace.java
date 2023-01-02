
//leetcode problem
public class reverseArrayInPlace{
    public static void main(String[] args){
       char[] array1 = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};
        reverser(array1);
        for(int i=0 ; i<array1.length ; i++){
        System.out.println(array1[i]);
        }
    }

    public static void reverser(char []array){

        int siz = array.length;
        for(int i=0 ; i<siz/2 ; i++){
            char temp = array[i];
            array[i] = array[siz-i-1];
            array[siz-i-1] = temp;
        }
    }
}
