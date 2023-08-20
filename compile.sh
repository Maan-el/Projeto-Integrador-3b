gcc -Wall -Wextra -fanalyzer -lm -O3 -march=native -lpthread -ggdb3 -fsanitize=undefined -fsanitize=address -fno-sanitize-recover=all -fsanitize=float-divide-by-zero -fsanitize=float-cast-overflow -fno-sanitize=null -fno-sanitize=alignment -fstack-clash-protection -fstack-protector-strong main.c # debug
gcc -Wall -Wextra -fanalyzer -lm -O3 -march=native -lpthread -fsanitize=undefined -fsanitize-minimal-runtime main.c # release

# -D_FORTIFY_SOURCE=2 <- Coisa para segurança, irrelevante nesse caso
# -fsanitize=thread <- Para o caso de tentarmos fazer algo multi-thread

# Precisa do libubsan e do libasan para validar UB durante a execução