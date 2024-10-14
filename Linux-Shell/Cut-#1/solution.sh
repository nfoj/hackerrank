# Given N lines of input, print the 3r character from each line as a new line of output. It is guaranteed that each of the n lines of input will have a 3r character.

# Input
# Hello
# World
# How are you

# Output
# l
# r
# w

# Solution
cut -c 3


# Solution
while read line
do
    echo "$line" | cut -c 3;
done

# -b número: Imprime uma lista vertical com o byte número (da esquerda para direita);
# -c número: Imprime uma lista vertical com o caractere número (da esquerda para direita);
# -d delimitador: Configura o delimitador que separa uma coluna da outra. O padrão é o Tab;
# -f número: Imprime a coluna número.