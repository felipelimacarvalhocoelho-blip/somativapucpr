dofile("mod.lua")

assert(score == 0, "Erro: score não inicia em 0")

assert(type(aumentarScore) == "function", "Erro: função não existe")

local valorAntes = score
aumentarScore()
assert(score == valorAntes + 10, "Erro: score não aumentou corretamente")

aumentarScore()
aumentarScore()
assert(score == valorAntes + 30, "Erro: múltiplos aumentos falharam")

assert(type(score) == "number", "Erro: score não é número")

print("Todos os testes passaram com sucesso!")
