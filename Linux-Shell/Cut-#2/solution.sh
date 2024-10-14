# Display the 2nd and 7th character from each line of text.

# Input
# Hello
# World
# How are you

# Output
# e
# o
# oe

# Solution
cut -c 2,7


# Solution
while read line
do
    echo "$line" | cut -c 2,7;
done


# -b número: Imprime uma lista vertical com o byte número (da esquerda para direita);
# -c número: Imprime uma lista vertical com o caractere número (da esquerda para direita);
# -d delimitador: Configura o delimitador que separa uma coluna da outra. O padrão é o Tab;
# -f número: Imprime a coluna número.