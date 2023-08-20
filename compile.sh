gcc -Wall -Wextra -fanalyzer -lm -O3 -march=native -pthread -ggdb3 -fsanitize=undefined -fsanitize=address -fno-sanitize-recover=all -fsanitize=float-divide-by-zero -fsanitize=float-cast-overflow -fno-sanitize=null -fno-sanitize=alignment -fstack-clash-protection -fstack-protector-strong main.c # debug
gcc -Wall -Wextra -fanalyzer -lm -O3 -march=native -pthread -fsanitize=undefined -fsanitize-minimal-runtime main.c # release


# Flags para validação de código durante a compilação   -> -Wall -Wextra -fanalyzer
# Incluir o math.h                                      -> -lm
# Se não me engano inclui o threads.h                   -> -pthread
# Optimizações do executável                            -> -O3 -march=native
# Informação para depuração                             -> -ggdb3
# Coisa para segurança, irrelevante nesse caso          -> -D_FORTIFY_SOURCE=2
# Validadores de código usados em tempo de execução     -> -fsanitize=undefined -fsanitize=address -fno-sanitize-recover=all -fsanitize=float-divide-by-zero -fsanitize=float-cast-overflow -fno-sanitize=null -fno-sanitize=alignment -fstack-clash-protection -fstack-protector-strong
# Para o caso de tentarmos fazer algo multi-thread      -> -fsanitize=thread

# Precisa do libubsan e do libasan para validar UB durante a execução