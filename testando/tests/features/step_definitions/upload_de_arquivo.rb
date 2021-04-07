Quando('eu faco um upload de arquivo') do
 visit '/outros/uploaddearquivos'
# attach_file('upload','C:\testeQA\testando\tests\features\download.png', make_visible: true)            @primeira opção

@foto = File.join(Dir.pwd, 'features\download.png')                  #outra opção mais prática para upload de arquivos
attach_file('upload',@foto, make_visible: true)

 sleep(5)
end