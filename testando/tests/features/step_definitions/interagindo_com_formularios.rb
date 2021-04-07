Quando('eu faco cadastro') do
    visit '/users/new'
    fill_in(id: 'user_name', with: 'Akauã')
    #fill_in(id: 'user_lastname', with: 'Lima')
    find('#user_lastname').set('Claudino')
    find('#user_email').send_keys('email@email.com')

    fill_in(id: 'user_address', with: 'rua 22ã')
    find('#user_university').set('USPANICO')
    find('#user_profile').send_keys('Carpinteiro')
    fill_in(id: 'user_gender', with: 'masculoso')
    find('#user_age').set('39')
    find('input[value="Criar"] ').click
   sleep(5)
  end
  
  Entao('verifico se fui cadastrado') do
   texto = find('#notice')
 expect(texto.text).to eql 'Usuário Criado com sucesso'
  end