# encoding: utf-8

# Программа-фоторобот, которая «собирает» лицо из фрагментов.

# Заведем четыре переменные с путями к файлам с набором для каждого фрагмента.
# Обратите внимание, что файлы с набором фрагментов нужно создавать папке data,
# которая находится в той же папке, где находится программа.
path ="#{__dir__}/data/parts_of_face/"
foreheads_path = "#{path}foreheads.txt"
eyes_path = "#{path}eyes.txt"
noses_path = "#{path}noses.txt"
mouths_path = "#{path}mouths.txt"

#Голова
foreheads = File.new(foreheads_path, "r:UTF-8").readlines
file.close
eyes = File.new(eyes_path, "r:UTF-8").readlines
file.close
noses = File.new(noses_path, "r:UTF-8").readlines
file.close
mouths = File.new(mouths_path, "r:UTF-8").readlines
file.close
face = [foreheads.sample, eyes.sample, noses.sample, mouths.sample]

#Определяем текущую дату
date_now = Time.now
#Имя файла
file_name = date_now.strftime("%F_face (%M-%H-%S)")

face_file = File.new("./data/faces/#{file_name}.txt","a:UTF-8")
face_file.puts( make_face(foreheads_path, eyes_path, noses_path, mouths_path) )
face_file.close
