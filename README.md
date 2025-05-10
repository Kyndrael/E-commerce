# E-commerce

O projeto consiste na criação de um modelo de banco de dados relacional para uma plataforma de e-commerce. Foram considerados os principais componentes como clientes (pessoa física ou jurídica), formas de pagamento, pedidos, produtos, entrega e itens do pedido.

A modelagem foi realizada respeitando as boas práticas de banco de dados, com definição de chaves primárias (PK), estrangeiras (FK), e restrições de unicidade.

Regras de Negócio Implementadas
Cliente PF e PJ:
Um cliente pode ser do tipo Pessoa Física ou Pessoa Jurídica, mas não ambos. Isso é controlado através de relacionamentos 1:1 com as tabelas Pessoa_Fisica e Pessoa_Juridica.

Formas de Pagamento:
Um cliente pode cadastrar uma ou mais formas de pagamento, como cartão de crédito, débito, boleto, etc.

Pedidos e Entregas:
Cada pedido pertence a um cliente e está relacionado a uma entrega única, que possui status e código de rastreio.

Itens do Pedido:
Um pedido pode conter vários itens, cada um vinculado a um produto e contendo a quantidade e o preço unitário.

