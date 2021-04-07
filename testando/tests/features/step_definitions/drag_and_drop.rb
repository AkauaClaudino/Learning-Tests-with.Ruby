Dado('que eu estou na tela de dragdrop') do
    visit 'iteracoes/draganddrop'
  end
  
  Entao('movo o dragdrop') do
    @primeiro_elemento = find('#winston')                #buscando pelo ID 
    @segundo_elemento = find ('#dropzone')

    @primeiro_elemento.drag_to(@segundo_elemento)
    sleep(5)
  end