Quando('seleciono o mouse hover') do
    visit '/iteracoes/mousehover'
   find('.activator').hover     #utilizando Class = 'activator' 
   #  find('.activator').hover.click   ** mesma forma porém clicando 
    sleep(5)
  end
  