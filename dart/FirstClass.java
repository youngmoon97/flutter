
// 1급 객체
// 변수에 할당할 수 있어야 한다.
// 함수나 객체의 매개변수로 넘길 수 있어야 한다.
// 힘수나 객체의 리턴값으로 리턴 가능해야 한다.

// 자바는 최상단에 class 이외의 것이 올 수 없다.

class FirstClass{
    String str = "aa";
    void hello(){
        System.out.println("hello");
    }
    // 매개변수로 함수를 넘겨서
    // 넘긴 함수를 실행하고 싶다.
    // 넘길 때 함수를 만들고시파(익명함수)
    void runFunction(MyInteface inter){
        inter.myFunction();
    }
}

interface MyInteface{
    void myFunction();
}