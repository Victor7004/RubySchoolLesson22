# Если мы хотим записать информацию в существующий файл, мы можем использовать блок кода для выполнения операции записи.
# С помощью этого кода Ruby автоматически закроет файл.
# Например:

File.open("file.txt", "w+") {
  |file| file.puts("some text") 
}
