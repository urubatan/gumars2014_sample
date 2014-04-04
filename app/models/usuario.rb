class Usuario < ActiveRecord::Base
  def self.login(nome,senha)
    u = find_by_nome_and_senha(nome,senha)
  end
end
