Quando('clico em um botao') do
    visit '/buscaelementos/botoes'
    find('#teste').click
  end
  
  Entao('verifico se o texto desapareceu na tela com sucesso') do
     page.assert_text(text, 'Você Clicou no Botão!')
     page.has_text?('Você Clicou no Botão!')


  find('#teste').click
sleep(5)
  assert_no_text(text, 'Você Clicou no Botão!')
  has_no_text?('Você Clicou no Botão!')
end