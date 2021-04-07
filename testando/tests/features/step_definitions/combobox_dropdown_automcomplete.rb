Quando('interajo com dropdown e select') do
   visit '/buscaelementos/dropdowneselect' 
   find('.btn.dropdown-button').click
   find('#dropdown3').click
   select 'Chrome', from: 'dropdown'       #usando Select para escolher dentro de uma dropdown
   find('option[value="2"]').select_option    #usando outra forma para escolher dentro de um dropdown
   sleep(5)
  end
  
  Quando('preencho o autocomplete') do
    visit '/widgets/autocomplete'
    find('#autocomplete-input').set 'São Paul'
    find('ul', text: 'São Paulo').click        #auto complete não está funcionando no site de automacao
    sleep(5)
  end