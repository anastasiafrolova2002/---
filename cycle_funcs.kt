import java.lang.System.`in`
import java.util.*

class Main {
    //номер 2 вариант 12 - функции с циклами

    //1 - поиск мин цифры числа
    fun minDigit(number:Int):Int{
        var minDigit = 9
        var num = number
        while (num > 0) {
            val digit = num % 10
            if (digit < minDigit) {
                minDigit = digit
            }
            num /= 10
        }
        return minDigit
    }

    //2 - количество цифр числа меньше 3
    fun kolvLessThree(number: Int): Int {
        var kolv = 0
        var num = number
        while (num > 0) {
            val digit = num % 10
            if (digit < 3) {
                kolv++
            }
            num /= 10
        }
        return kolv
    }

    //3 - количество делителей числа
    fun kolvDel(number: Int): Int {
        var kolv = 0
        for (i in 1..number) {
            if (number % i == 0) {
                kolv++
            }
        }
        return kolv
    }

    //рекурсия вверх
    fun minDigUp(number : Int ): Int = if (number < 10) number else  minOf(number % 10, minDigUp(number / 10))

    fun kolvLessThreeUp(number : Int ): Int = if (number == 0) 0  else if(number % 10 < 3) 1+kolvLessThreeUp(number / 10) else kolvLessThreeUp(number/10)

    fun kolvDelUp(number : Int, del : Int = 1): Int  = if (number < del) 0 else if ( number % del == 0 )1 + kolvDelUp(number, del + 1) else kolvDelUp(number, del + 1)

    //хвостовая рекурсия
    tailrec fun minDigitD(number : Int, mindig:Int) : Int = if (number == 0 )mindig else if (number%10<mindig) minDigitD(number/10, number%10) else minDigitD(number/10, mindig)
    fun minDigitDown(number:Int): Int = minDigitD(number, 9)

    tailrec fun kolvLessThreeUpD(number : Int, kolv:Int) : Int = if (number == 0 )kolv else if (number%10 < 3) kolvLessThreeUpD(number/10, kolv+1) else kolvLessThreeUpD(number/10, kolv)
    fun kolvLessThreeUpDown(number:Int): Int = kolvLessThreeUpD(number, 0)

    tailrec fun kolvDelD(number: Int, del: Int = 1, kolv: Int = 0): Int =
        if (number < del) kolv
        else kolvDelD(number, del + 1, if (number % del == 0) kolv + 1 else kolv)

    fun kolvDelDown(number: Int): Int = kolvDelD(number)

    fun main() {
        println("Hello World!")
        val scanner = Scanner(`in`)
        println("Введите число:")
        val x: Int = scanner.nextInt()
        println("Сумма цифр числа = ${sumcd(x)}")
        println("Минимальная цифра числа 4589 =  ${minDigit(4589)}")
        println("Количество цифр числа, меньших 3, числа 1114589 =  ${kolvLessThree(1114589)}")
        println("Количество делителей числа 6 = ${kolvDel(6)}")
        println(minDigUp(4563))
        println(kolvLessThreeUp(333312))
        println(kolvDelUp(6))
        println(minDigitDown(4321))
        println(kolvLessThreeUpDown(1212444444))
        println(kolvDelDown(6))
    }
}

fun main() = Main().main()
