# encoding: utf-8

# Программа-фоторобот, которая «собирает» лицо из фрагментов.

# Заведем четыре переменные с путями к файлам с набором для каждого фрагмента.
path ="#{__dir__}/data/parts_of_face/"
foreheads_path = "#{path}foreheads.txt"
eyes_path = "#{path}eyes.txt"
noses_path = "#{path}noses.txt"
mouths_path = "#{path}mouths.txt"

foreheads = File.new(foreheads_path, "r:UTF-8").readlines
eyes = File.new(eyes_path, "r:UTF-8").readlines
noses = File.new(noses_path, "r:UTF-8").readlines
mouths = File.new(mouths_path, "r:UTF-8").readlines
face = [foreheads.sample, eyes.sample, noses.sample, mouths.sample]

#Определяем текущую дату
date_now = Time.now
#Имя файла
file_name = date_now.strftime("%F_face (%M-%H-%S)")

face_file = File.new("./data/faces/#{file_name}.txt","a:UTF-8")
face_file.puts( make_face(foreheads_path, eyes_path, noses_path, mouths_path) )
face_file.close
