package useless

import org.junit.Assert.assertTrue
import org.junit.Test

class Test2 {

  @Test
  def anotherTestThatPasses(): Unit = {
    assertTrue(1 == 1)
  }

  @Test
  def anotherTestThatFails(): Unit = {
    assertTrue(1 == 0)
  }

  @Test
  def anotherTestThatFailsWithException(): Unit = {
    assertTrue(Main.doStuff() == 42)
  }
}
