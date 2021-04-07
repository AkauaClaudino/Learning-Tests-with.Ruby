Quando('clico em botoes') do
  visit '/'  
  click_on('Começar Automação Web') #click_link_or_button são identicos
  visit '/buscaelementos/botoes'
  click_button(class: 'btn waves-light')
  find('a[onclick="ativaedesativa2()"]').click
  find('a[onclick="ativaedesativa2()"]').double_click
  find('a[onclick="ativaedesativa2()"]').right_click
  sleep(5)
  visit '/'
  click_link('Github')
  sleep(5)

  end