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



    fun main() {
        println("Hello World!")
        val scanner = Scanner(`in`)
        println("Введите число:")
        val x: Int = scanner.nextInt()
        println("Сумма цифр числа = ${sumcd(x)}")
        println("Минимальная цифра числа 4589 =  ${minDigit(4589)}")
        println("Количество цифр числа, меньших 3, числа 1114589 =  ${kolvLessThree(1114589)}")
        println("Количество делителей числа 6 = ${kolvDel(6)}")
    }
}

fun main() = Main().main()
