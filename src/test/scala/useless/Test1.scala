package useless

import org.junit.Test
import org.junit.Assert._

class Test1 {

  @Test
  def testThatPasses(): Unit = {
    assertTrue(1 == 1)
  }

  @Test
  def testThatFails(): Unit = {
    assertTrue(1 == 0)
  }

  @Test
  def testThatFailsWithException(): Unit = {
    assertTrue(Main.doStuff() == 42)
  }

}
