namespace :dev do
  desc 'Configura o ambiente de desenvolvimento'
  task setup: :environment do
    p 'Cadastrando os contatos...'
    100.times do |_i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthdate: Faker::Date.between(35.years.ago, 18.years.ago)
      )
    end
    p "Contatos cadastrados com sucesso!!!"
  end
end
