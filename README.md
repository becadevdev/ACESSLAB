# ♿ AccessLab – Plataforma Inteligente de Gestão da Acessibilidade

O **AccessLab** é uma plataforma web inteligente desenvolvida para auxiliar na **gestão da acessibilidade dos laboratórios de informática** de instituições de ensino.

O sistema tem como objetivo centralizar informações sobre laboratórios, equipamentos adaptativos, condições de acessibilidade, solicitações de adaptações e manutenções, oferecendo ferramentas que auxiliam a **CAPNE e a gestão institucional** no acompanhamento das demandas, no planejamento de melhorias e na tomada de decisões.

O projeto foi desenvolvido como requisito acadêmico, aplicando na prática conceitos de desenvolvimento de sistemas e as tecnologias definidas pelas disciplinas.

A proposta surgiu a partir da necessidade de melhorar o planejamento e o controle da acessibilidade nos laboratórios de informática, considerando que a ausência de equipamentos adaptativos e de um sistema centralizado dificulta a inclusão de estudantes com necessidades específicas.

---

# ✨ Principais Recursos

A plataforma foi planejada para contemplar as principais necessidades relacionadas à gestão da acessibilidade dos laboratórios:

### 🔐 Autenticação

Permite o acesso ao sistema somente por **administradores e gestores autorizados**, utilizando login e senha.

### 🏫 Gestão de Laboratórios

Permite cadastrar e gerenciar informações relacionadas aos laboratórios de informática e suas condições de acessibilidade.

### ♿ Equipamentos Adaptativos

Permite cadastrar, consultar, editar e excluir equipamentos adaptativos utilizados ou necessários nos laboratórios.

### 📝 Solicitações de Adaptação

Possibilita registrar e acompanhar solicitações relacionadas a adaptações de acessibilidade nos laboratórios.

### 🔧 Manutenções

Permite registrar e acompanhar as manutenções necessárias nos laboratórios.

### ☑️ Checklists

O sistema permite gerar **checklists de acessibilidade**, auxiliando na verificação das condições dos laboratórios.

### 📊 Relatórios

Gera relatórios sobre a situação da acessibilidade dos laboratórios, auxiliando a gestão na análise das necessidades.

### 💰 Orçamentos

Permite gerar orçamentos relacionados à aquisição de equipamentos e realização de adaptações.

### 📈 Dashboard

Apresenta indicadores para apoiar a tomada de decisões, incluindo informações como:

* Quantidade de laboratórios cadastrados;
* Quantidade de equipamentos adaptativos disponíveis;
* Quantidade de solicitações abertas e em andamento;
* Quantidade de equipamentos que necessitam de manutenção;
* Histórico das adaptações realizadas;
* Quantidade de solicitações concluídas.

---

# 🎯 Objetivo do Sistema

O objetivo do AccessLab é **gerenciar a acessibilidade dos laboratórios de informática**, permitindo que as instituições tenham uma visão centralizada das condições dos ambientes e das demandas existentes.

A plataforma busca apoiar o planejamento das ações de acessibilidade, melhorar o acompanhamento das solicitações e fornecer informações para que os gestores possam definir prioridades e investimentos.

---

# 👥 Usuários do Sistema

O AccessLab possui diferentes perfis envolvidos na gestão da acessibilidade:

### Administrador

Responsável por gerenciar usuários e configurações do sistema, garantindo seu funcionamento e segurança.

### Gestão da CAPNE

Utiliza o sistema para gerenciar a acessibilidade dos laboratórios, centralizar informações, acompanhar demandas e apoiar a tomada de decisões.

### Gestão Institucional

Acompanha indicadores e relatórios para auxiliar no planejamento da instituição, definição de prioridades e investimentos em acessibilidade.

### Técnicos de Laboratório

Fornecem informações sobre os laboratórios e executam adaptações quando necessário, além de registrar e acompanhar demandas de acessibilidade.

---

# 🛠️ Stack Tecnológico

O projeto utiliza as tecnologias definidas para o desenvolvimento nas disciplinas:

### Linguagens e Tecnologias

* **Java**
* **HTML**
* **CSS**
* **API REST**
* **MySQL**

### Arquitetura

O sistema é desenvolvido como uma **plataforma web**, utilizando uma API REST para comunicação entre as diferentes partes da aplicação e um banco de dados MySQL para armazenamento das informações.

---

# 💾 O que o sistema gerencia?

O AccessLab centraliza informações relacionadas à acessibilidade dos laboratórios de informática.

Entre os principais dados gerenciados estão:

### 🏫 Laboratórios

Informações relacionadas aos laboratórios e suas condições de acessibilidade.

### ♿ Equipamentos Adaptativos

Cadastro e gerenciamento dos equipamentos adaptativos, incluindo sua disponibilidade e necessidade de manutenção.

### 📝 Solicitações

Registro e acompanhamento de solicitações de adaptações e manutenções.

### 🔧 Manutenções

Informações sobre manutenções necessárias e realizadas nos laboratórios.

### ☑️ Checklists

Informações utilizadas para verificar as condições de acessibilidade dos ambientes.

### 📊 Indicadores

Dados utilizados para gerar dashboards e relatórios de apoio à gestão.

### 💰 Orçamentos

Informações relacionadas aos custos previstos para aquisição de equipamentos e realização de adaptações.

---

# 📋 Requisitos do Sistema

## Requisitos Funcionais

O sistema possui os seguintes requisitos funcionais:

* **RF01:** Permitir login apenas de administradores e gestores autorizados.
* **RF02:** Permitir o cadastro de laboratórios.
* **RF03:** Permitir o cadastro de equipamentos adaptativos.
* **RF04:** Permitir o cadastro das condições e necessidades de acessibilidade de cada laboratório.
* **RF05:** Permitir registrar manutenções dos laboratórios.
* **RF06:** Permitir acompanhar o status das solicitações.
* **RF07:** Gerar checklists de acessibilidade dos laboratórios.
* **RF08:** Gerar relatórios sobre a situação da acessibilidade dos laboratórios.
* **RF09:** Gerar orçamentos para aquisição de equipamentos e adaptações.
* **RF10:** Apresentar dashboards com indicadores para auxiliar a gestão na tomada de decisões.
* **RF11:** Permitir a edição dos equipamentos adaptativos.
* **RF12:** Permitir a consulta dos equipamentos.
* **RF13:** Permitir a exclusão de equipamentos.
* **RF14:** Permitir gerenciar as solicitações de adaptações.
* **RF15:** Permitir o gerenciamento das manutenções dos laboratórios.

---

# ⚙️ Requisitos Não Funcionais

O sistema também possui requisitos relacionados à qualidade, segurança e acessibilidade:

* Interface intuitiva, permitindo realizar as principais operações com no máximo 3 cliques.
* Autenticação segura por login e senha.
* Garantia da integridade e confidencialidade dos dados.
* Acesso restrito aos usuários autenticados.
* Resposta das principais operações em até 3 segundos em condições normais de uso.
* Compatibilidade com versões atuais do Google Chrome, Microsoft Edge e Mozilla Firefox.
* Atendimento às diretrizes de acessibilidade digital **WCAG 2.1**.
* Código organizado e documentado, facilitando futuras manutenções e atualizações.
* Disponibilidade mínima de 95% durante o período de funcionamento da instituição.

---

# 🚀 Como executar o projeto

Para executar o AccessLab, é necessário preparar o ambiente de desenvolvimento com as tecnologias utilizadas no projeto.

## 1. Preparar o ambiente

Certifique-se de possuir as ferramentas necessárias para trabalhar com:

* Java;
* HTML e CSS;
* API REST;
* MySQL.

## 2. Configurar o banco de dados

O projeto utiliza o **MySQL** para armazenamento das informações.

Configure o banco de dados conforme a estrutura definida para o projeto.

## 3. Configurar a API

Configure a API REST responsável pela comunicação entre a aplicação e o banco de dados.

## 4. Executar o sistema

Após configurar o ambiente, o projeto poderá ser executado para acessar a plataforma web e utilizar suas funcionalidades.

> **Observação:** O Documento de Visão não apresenta informações específicas sobre comandos de instalação, nome do banco de dados, endereço da API, estrutura de pastas ou comandos para execução. Essas informações devem ser adicionadas ao README quando forem definidas no desenvolvimento.

---

# 📁 Organização do Projeto

A organização interna das pastas e arquivos do projeto não é especificada no Documento de Visão.

A estrutura deverá ser documentada posteriormente de acordo com a implementação realizada pela equipe.

---

# 🚫 Fora do Escopo

Na primeira versão, o AccessLab **não** terá:

* Acesso direto dos estudantes;
* Compras automáticas de equipamentos adaptativos;
* Controle de empréstimos de equipamentos;
* Gerenciamento de processos acadêmicos ou administrativos da instituição;
* Integração com sistemas externos, como SUAP ou SIGAA;
* Substituição dos processos administrativos da CAPNE.

O sistema funcionará como uma **ferramenta de apoio à gestão da acessibilidade dos laboratórios de informática**.

---

# ⚠️ Restrições

O desenvolvimento do projeto está condicionado a:

* Tempo disponível durante o semestre letivo;
* Número reduzido de integrantes da equipe;
* Orçamento limitado para uma implementação real;
* Utilização obrigatória das tecnologias definidas pelas disciplinas;
* Disponibilidade de acesso à internet para desenvolvimento e testes;
* Cumprimento dos prazos estabelecidos pelos professores;
* Infraestrutura tecnológica disponibilizada pela instituição.

---

# 📌 Premissas

Para o desenvolvimento do AccessLab, considera-se que:

* A CAPNE fornecerá as informações necessárias para o levantamento dos requisitos;
* A CAPNE participará da validação da solução;
* Haverá disponibilidade de banco de dados;
* Haverá ambiente adequado para desenvolvimento;
* Haverá acesso à internet durante a execução do projeto;
* A equipe colaborará durante todas as etapas;
* Os gestores terão interesse em utilizar o sistema como ferramenta de apoio ao planejamento e à gestão da acessibilidade dos laboratórios.

---

# 🌱 Impacto Esperado

O AccessLab busca contribuir para a construção de ambientes educacionais mais acessíveis e inclusivos.

Ao centralizar informações sobre laboratórios, equipamentos, condições de acessibilidade e solicitações, a plataforma pretende facilitar o acompanhamento das demandas e apoiar o planejamento de melhorias.

Dessa forma, o sistema busca contribuir para a **inclusão e autonomia de estudantes com necessidades específicas**, além de auxiliar a instituição na definição de prioridades e investimentos em acessibilidade.

---

# 👨‍💻 Equipe de Desenvolvimento

Este projeto foi desenvolvido por:

* **Rebeca Barbosa da Silva Pereira**
* **Laiane Ribeiro**
* **Ana Carolina Carvalho**
* **Isadora Miranda**
* **Kauan Felipe Oliveira**

---

# 📚 Informações do Projeto

**Projeto:** AccessLab – Plataforma Inteligente de Gestão da Acessibilidade

**Cliente / Patrocinador:** Instituições de Ensino (IFBA e escolas públicas e privadas)

**Versão:** Final

**Data do Documento de Visão:** 29/07/2026

**Finalidade:** Projeto acadêmico

---

## ♿ AccessLab

> **Tecnologia para uma educação mais acessível, inclusiva e autônoma.**
