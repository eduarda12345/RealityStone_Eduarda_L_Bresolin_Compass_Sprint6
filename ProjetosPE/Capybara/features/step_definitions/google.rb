Dado('que acesse a home') do
    visit('https://www.google.com.br/')
  end
  
  Então('deverá exibir a logo do google') do
    exepect().to have_content 'Gmail'
    exepect(page).to have_css '.lnXdpd'
  end