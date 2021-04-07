Quando('eu marco um checkbox e um radiobox') do
    visit 'buscaelementos/radioecheckbox'
    find('label[for="white"]').click
    check('purple', allow_label_click: true)  #outra  forma de clicar em checkbox
    
    uncheck('purple', allow_label_click: true) #desmarcando checkbox
   
    choose('red', allow_label_click: true)    #marcando radiobox
    sleep(5)
  end
  