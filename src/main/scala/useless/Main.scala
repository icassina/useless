package useless

object Main {
  def main(args: Array[String]): Unit = {
    println("Hello world!")
  }

  def doStuff(): Int = {
    doNothing()
  }

  def doNothing(): Int = {
    println("Nothing done")
    explode()
  }

  def explode(): Int = {
    throw new RuntimeException("I don't know numbers!")
  }
}