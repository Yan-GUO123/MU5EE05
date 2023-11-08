import math
import py_compile

# Nom du fichier source à compiler
source_file = 'test.py'

# Génère le fichier .pyc
py_compile.compile(source_file)


# Fonction pour calculer le maximum d'un tableau
def maximum(tableau):
    if len(tableau) == 0:
        return None
    max_val = tableau[0]
    for val in tableau:
        if val > max_val:
            max_val = val
    return max_val

# Fonction pour calculer le minimum d'un tableau
def minimum(tableau):
    if len(tableau) == 0:
        return None
    min_val = tableau[0]
    for val in tableau:
        if val < min_val:
            min_val = val
    return min_val

# Fonction pour calculer la variance d'un tableau
def variance(tableau):
    n = len(tableau)
    if n == 0:
        return None
    mean = sum(tableau) / n
    sum_squared_diff = sum((x - mean) ** 2 for x in tableau)
    var = sum_squared_diff / n
    return var

# Exemple d'utilisation :
tableau = [4, 9, 10, 11, 12, 15, 12, 9, 0, 30]
max_val = maximum(tableau)
min_val = minimum(tableau)
variance_val = variance(tableau)

print("Maximum :", max_val)
print("Minimum :", min_val)
print("Variance :", variance_val)

