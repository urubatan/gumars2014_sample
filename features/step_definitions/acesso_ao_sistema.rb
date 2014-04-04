# encoding: utf-8


Dado(/^que exista um usuário "(.*?)" de nome "(.*?)" e senha "(.*?)"$/) do |papel, nome, senha|
  Usuario.create :papel => papel, :nome => nome, :senha => senha
end

Quando(/^eu acessar o sistema com as credenciais "(.*?)" "(.*?)"$/) do |nome, senha|
  visit "/sessions/new"
  fill_in "Nome", :with => nome
  fill_in "Senha", :with => senha
  click_button "Login"
end

Então(/^devo ver o menu "(.*?)" com as seguintes opções:$/) do |menu, opcoes|
  within "section#menu" do
    page.should have_content(menu)
    opcoes.hashes.each do |line|
      text = line["opcao"]
      within "ul.menu" do
        page.should have_content(text)
      end
    end
  end
end

Então(/^não devo ver as seguintes opções no menu "(.*?)":$/) do |menu, opcoes|
  within "section#menu" do
    page.should have_content(menu)
    opcoes.hashes.each do |line|
      text = line["opcao"]
      within "ul.menu" do
        page.should_not have_content(text)
      end
    end
  end
end