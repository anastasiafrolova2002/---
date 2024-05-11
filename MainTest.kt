import org.junit.jupiter.api.Assertions.*

class MainTest {

    @org.junit.jupiter.api.Test
    fun max3() {
        val main = Main()
        val expected = 19
        assertEquals(expected, main.max3(13,19,1))
    }

    @org.junit.jupiter.api.Test
    fun factup() {
        val main = Main()
        val expected = 24
        assertEquals(expected, main.factup(4))
    }

    @org.junit.jupiter.api.Test
    fun factdown() {
        val main = Main()
        val expected = 120
        assertEquals(expected, main.factdown(5))
    }


    @org.junit.jupiter.api.Test
    fun calc() {
        val main = Main()
        val expected = 20
        assertEquals(expected, main.calc(true)(5555))
    }


    @org.junit.jupiter.api.Test
    fun sumd() {
        val main = Main()
        val expected = 20
        assertEquals(expected, main.sumd(5555))
    }

    @org.junit.jupiter.api.Test
    fun muld() {
        val main = Main()
        val expected = 0
        assertEquals(expected, main.muld(150))
    }

    @org.junit.jupiter.api.Test
    fun maxd() {
        val main = Main()
        val expected = 8
        assertEquals(expected, main.maxd(103845))
    }

    @org.junit.jupiter.api.Test
    fun mind() {
        val main = Main()
        val expected = 2
        assertEquals(expected, main.mind(998765325))
    }

     @org.junit.jupiter.api.Test
    fun minDigit() {
        val main = Main()
        val expected = 2
        assertEquals(expected, main.minDigit(998765325))
    }

    @org.junit.jupiter.api.Test
    fun kolvLessThree() {
        val main = Main()
        val expected = 4
        assertEquals(expected, main.kolvLessThree(41516171))
    }

    @org.junit.jupiter.api.Test
    fun kolvDel() {
        val main = Main()
        val expected = 4
        assertEquals(expected, main.kolvDel(6))
    }
}
