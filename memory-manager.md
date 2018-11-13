## Gerenciador de memória

Para melhor utilização dos recursos providos pelo GBA foi desenvolvido um módulo que trata do gerenciamento de memória dos objetos do jogo. A principal responsabilidade deste módulo é garantir que a alocação e desalocação de recursos seja feita de forma eficiente e segura.

TODO
- mapa único para todas as regiões de memória
- tamanhos constantes das regiões de memória
- funções específicas para alocação

### 1. Funcionamento do gerenciador de memória

O modelo de gerenciamento escolhido para ser utilizado neste projeto foi o modelo de gerenciamento com partições variáveis. Esse modelo se faz necessário pois os recursos a serem alocados durante a execução do jogo contém tamanhos distintos (uma sprite ocupa menos espaço que um background que, por sua vez, ocupa menos espaço do que uma música). Além disso, é importante citar que este gerenciador aloca os recursos contiguamente na memória, isto é, ele sempre irá optar pelo primeiro espaço disponível a partir do começo da memória.

Utilizando esse modelo como base, o gerenciador funciona da seguinte maneira:

- quando ocorre uma chamada de alocação, o gerenciador


o gerenciador procura o primeiro espaço disponível (caso exista) para alocar o recurso
-

- alocação contígua na memória X
- (TO-DO) desfragmentação da memória






### 2. Gerenciamento seguro de memória

Para garantir a segurança na manipulação da memória por parte do gerenciador, as seguintes estratégias foram abordadas:

#### 2.1 Verificação de disponibilidade para alocação de novos objetos

Para garantir que novos recursos sejam alocados e que nenhum objeto já carregado na memória seja sobrescrito ou corrompido, qualquer chamada que envolva a alocação de novos recursos passa por um processo onde é verificado se a memória que será populada contém espaço suficiente realizar tal alocação.

Para realizar esta verificação, o gerenciador possui um mapa que associa um enderenço na memória com o tamanho que o objeto alocado neste endereço ocupa.

-> volatile

* segurança
-> verificação de disponibilidade da memória
-> mapa endereço:tamanho
-> checagem NULL

* eficiência
-> singleton
-> tipos das variáveis
-> struct bitfield


TOPICOS
- necessidade de um gerenciador de memória
- responsabilidade do gerenciador de memória
- problemas que o gerenciador de memória resolve
- problema que o gerenciador de memória não resolve
- métodos do gerenciador de memória