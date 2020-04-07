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

def make_face(foreheads_path, eyes_path, noses_path, mouths_path)
  # Проверяем есть ли файл со лбами
  if File.exist?(foreheads_path)
    file = File.new(foreheads_path, "r:UTF-8")
    foreheads = file.readlines
    file.close # закрываем файл
  else
    abort "Лбы не найдены"
  end

  if File.exist?(eyes_path)
    file = File.new(eyes_path, "r:UTF-8")
    eyes = file.readlines
    file.close
  else
    abort "Глаза не найдены"
  end

  if File.exist?(noses_path)
    file = File.new(noses_path, "r:UTF-8")
    noses = file.readlines
    file.close
  else
    abort "Носы не найдены"
  end

  if File.exist?(mouths_path)
    file = File.new(mouths_path, "r:UTF-8")
    mouths = file.readlines
    file.close
  else
    abort "Рты не найдены"
  end
  return [foreheads.sample, eyes.sample, noses.sample, mouths.sample]
end

#Определяем текущую дату
date_now = Time.now
#Имя файла в виде даты 20-03-2020
file_name = date_now.strftime("%F_face (%M-%H-%S)")

face_file = File.new("./data/faces/#{file_name}.txt","a:UTF-8")
face_file.puts( make_face(foreheads_path, eyes_path, noses_path, mouths_path) )
face_file.close
