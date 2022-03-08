Мы также можем читать содержимое файла построчно, используя метод readlines.
Например:

File.open("test.txt", "a+") {
  |file| file.puts("a line of text")
  file.puts("another line of text")
}

File.readlines("test.txt").each {
  |line| puts " --- #{line}"
}
Метод readlines считывает весь файл по одной строке и возвращает эти строки в массиве.
