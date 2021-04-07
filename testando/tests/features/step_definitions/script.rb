Quando('eu uso um script') do
   visit 'outros/scroll'
   page.execute_script("window.scrollBy(0,1500)")  
   @result = page.evaluate_script('4 + 4');
   puts @result
  end



  #Execute o script fornecido, não retornando um resultado. Isso é útil para scripts que retornam objetos complexos, como instruções Jquery

#   page.execute_script ("$Windoww.scrollBy(0,500);")
#   Result = page.evaluate_script('5+5');