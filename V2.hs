alunosProgramacaoFuncional = "Programação Funcional-al001 Rui Silva\nProgramação Funcional-al002 Maria Silva"

alunosCompiladores = "Compiladores-al001 Rui Silva\nCompiladores-al002 Maria Silva\nCompiladores-al003 Tiago Silva\nCompiladores-al004 Sofia Silva"

alunosTopicos = "Tópicos-al004 Sofia Silva"

alunosInscritos :: String -> String
alunosInscritos "Programação Funcional" = alunosProgramacaoFuncional
alunosInscritos "Compiladores" = alunosCompiladores
alunosInscritos "Tópicos" = alunosTopicos
alunosInscritos _ = "Nenhum aluno inscrito nessa unidade curricular"

inscricoesDoAluno :: String -> String
inscricoesDoAluno aluno 
    | aluno == "al001 Rui Silva" = "Programação Funcional\nCompiladores"
    | aluno == "al002 Maria Silva" = "Programação Funcional\nCompiladores"
    | aluno == "al003 Tiago Silva" = "Compiladores"
    | aluno == "al004 Sofia Silva" = "Compiladores\nTópicos"
    | otherwise = "Esse aluno não existe"

main = do
    putStrLn "Programação Funcional-al001 Rui Silva\nProgramação Funcional-al002 Maria Silva\nCompiladores-al001 Rui Silva\nCompiladores-al002 Maria Silva\nCompiladores-al003 Tiago Silva\nCompiladores-al004 Sofia Silva\nTópicos-al004 Sofia Silva"
    putStrLn "al001 Rui Silva-Programação Funcional\nal002 Maria Silva-Programação Funcional\nal001 Rui Silva-Compiladores\nal002 Maria Silva-Compiladores\nal003 Tiago Silva-Compiladores\nal004 Sofia Silva-Compiladores\nal004 Sofia Silva-Tópicos"
    
    putStrLn "Qual é a unidade curricular que deseja ver os alunos inscritos: "
    unidadecurricular <- getLine
    putStrLn $ alunosInscritos unidadecurricular

    putStrLn "Introduz o nome o al do aluno e o respetivo para ver quais as unidades curriculares está inscrito (alxxx nome): "
    nome <- getLine 
    putStrLn $ inscricoesDoAluno nome 
