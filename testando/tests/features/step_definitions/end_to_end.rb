Quando('eu cadastro um usuário') do
    visit '/users/new'
    fill_in(id: 'user_name', with: 'Akaua')
    find('#user_lastname').set('claudino')
    fill_in(id: 'user_email', with: 'akauaclaudino@outlook.com')
    find('input[value="Criar"]').click
  end
  
  Entao('verifico se o usuario foi cadastrado') do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'
  end
  
  Quando('edito um usuario.') do
    sleep(10)
    find('.btn.waves-light.blue').click
  end
  
  Entao('verifico se o usuario foi editado') do
   
  end