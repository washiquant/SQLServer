using System;
using System.Collections.Generic;
using System.Text;

//**Exercício 3 — Do DER ao texto.** Escreva o modelo lógico em notação textual (PK sublinhada, FK com a tabela que ela referencia):

//1.TIME(codigo_time, nome)(1, 1) — tem — (1, N) JOGADOR (codigo_jogador, nome)
//2. ATOR (id_ator, nome) (1, N) — atua — (1, N) FILME (id_filme, titulo), guardando o **personagem** de cada ator em cada filme
//3. PAIS (sigla, nome) (1,1) — tem — (1,1) CAPITAL (codigo, nome)

