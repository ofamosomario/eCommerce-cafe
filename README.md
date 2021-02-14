# eCommerce Cafe - Descrição:

-   Nós precisamos suportar vários meios de pagamento para receber de nossos clientes. Eles podem pagar por boleto, por cartão de crédito, por depósito e amanhã podem surgir novas formas como Pix.
-   Cada cliente pode escolher como quer fazer o pagamento. Essa escolha deve ficar registrada no sistema e levada em consideração toda vez que um faturamento for gerado para o cliente.
-   O faturamento deverá ser executado uma vez por mês no dia de vencimento escolhido pelo cliente e utilizar a forma de pagamento escolhida por ele.

# Tecnologias utilizadas:

- Ruby: 2.5.3p105 (2018-10-18 revision 65156) [x86_64-linux]
- Rails: 5.2.4.4
- PostgreSQL

# Como executar o projeto:
Clone o repositório, após isso basta executar no terminal: bundle install e por fim rake db:create db:migrate db:seed

# Verificação de pendencias:
Foi utilizado a gem whenever para realizar os cronjob. A configuração consta no schedule.rb

# Testes na aplicação:
Favor executar rspec no terminal.

# Como adicionar um novo método de pagamento:
Deverá criar um novo registro na tabela payment_methods o name_value deverá ser o mesmo nome que a classe de serviço opter, utilizando camelCase.

# Usuários:
{ full_name: 'User 1' , email: 'user1@gmail.com' , password: '123123' , password_confirmation: '123123' , role: 0 , payment_method_id: 1 , expiration_date: 5 },
{ full_name: 'User 2' , email: 'user2@gmail.com' , password: '123123' , password_confirmation: '123123' , role: 1 , payment_method_id: 1 , expiration_date: 10 },