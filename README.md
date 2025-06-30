# Rede Social

Aplicativo mobile de rede social desenvolvido em Flutter, inspirado em plataformas como Instagram. Permite visualizar stories, posts, perfis de usuários e interagir com curtidas e comentários.

## Funcionalidades

- **Feed de Posts:** Veja publicações de outros usuários, com imagens, legendas, curtidas e comentários.
- **Stories:** Visualize stories dos usuários no topo do feed.
- **Perfil do Usuário:** Acesse o perfil, veja estatísticas (posts, seguidores, seguindo), bio e grid de fotos.
- **Detalhe do Post:** Veja a publicação em tela cheia, com comentários e botões de interação.
- **Comentários:** Leia e interaja com comentários em cada post.

## Telas Principais

- **Feed:** Lista de stories e posts.
- **Perfil:** Informações do usuário, bio, estatísticas e grid de fotos.
- **Detalhe do Post:** Imagem ampliada, curtidas, comentários e ações.

## Instalação

1. **Clone o repositório:**
   ```bash
   git clone <url-do-repositorio>
   cd rede_social
   ```
2. **Instale as dependências:**
   ```bash
   flutter pub get
   ```
3. **Execute o app:**
   ```bash
   flutter run
   ```

> Certifique-se de ter o [Flutter](https://docs.flutter.dev/get-started/install) instalado e configurado em sua máquina.

## Dependências Principais

- [Flutter SDK](https://flutter.dev/) (>=3.8.1)
- [cupertino_icons](https://pub.dev/packages/cupertino_icons)

## Estrutura do Projeto

- `lib/screens/` - Telas principais do app (feed, perfil, detalhe do post)
- `lib/components/` - Componentes reutilizáveis (avatar, post, story, comentário)

## Licença

Este projeto é apenas para fins educacionais e não possui licença comercial.
