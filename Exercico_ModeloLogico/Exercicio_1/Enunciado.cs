using System;
using System.Collections.Generic;
using System.Text;

/*
 * **Exercício 1 — Qual regra usar?** Diga o que cada item vira no modelo lógico:

1. O atributo composto **endereço** (rua, número, bairro) de CLIENTE.
R: Tabela Endereço - rua,numero,bairro COLUNAS
2. O atributo multivalorado **telefone** de CLIENTE.
R: Criar tabela telefone com FK do id_cliente
3. O atributo derivado **idade** de ALUNO.
R: Chave Estrangeira
4. CLIENTE (1,1) — faz — (0,N) PEDIDO. Onde fica a FK?
R: PEDIDO
5. ATOR (1,N) — atua — (1,N) FILME. O que acontece?
R: PELO MENOS UM ATOR ATUA EM UM FILME
6. FUNCIONARIO supervisiona FUNCIONARIO (cada funcionário tem no máximo um chefe).
R: 1:1
*/
/*
 * 
 * 
 * 
 * 
 * */
