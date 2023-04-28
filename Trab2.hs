module Trab2 where

import System.IO ()

main = do
    putStrLn "Programação Funcional-al001 Rui Silva\nProgramação Funcional-al002 Maria Silva\nCompiladores-al001 Rui Silva\nCompiladores-al002 Maria Silva\nCompiladores-al003 Tiago Silva\nCompiladores-al004 Sofia Silva\nTópicos-al004 Sofia Silva"
    putStrLn "al001 Rui Silva-Programação Funcional\nal002 Maria Silva-Programação Funcional\nal001 Rui Silva-Compiladores\nal002 Maria Silva-Compiladores\nal003 Tiago Silva-Compiladores\nal004 Sofia Silva-Compiladores\nal004 Sofia Silva-Tópicos"
    
    putStrLn "Qual é a unidade curricular que deseja ver os alunos inscritos: "
    unidadecurricular <- getLine
    if unidadecurricular == "Programação Funcional" 
        then putStrLn "Programação Funcional-al001 Rui Silva\nProgramação Funcional-al002 Maria Silva"
    else if unidadecurricular == "Compiladores"
        then putStrLn "Compiladores-al001 Rui Silva\nCompiladores-al002 Maria Silva\nCompiladores-al003 Tiago Silva\nCompiladores-al004 Sofia Silva"
    else if unidadecurricular == "Tópicos"
        then putStrLn "Tópicos-al004 Sofia Silva"
    else 
        putStrLn "Nenhum aluno inscrito nessa unidade curricular"

    putStrLn "Introduz o nome o al do aluno e o respetivo nome para ver quais as unidades curriculares em que está inscrito (alxxx Nome): "
    nome <- getLine 
    if nome == "al001 Rui Silva"
        then putStrLn "Programação Funcional\nCompiladores"
    else if nome == "al002 Maria Silva"
        then putStrLn "Programação Funcional\nCompiladores"
    else if nome == "al003 Tiago Silva"
        then putStrLn "Compiladores"
    else if nome == "al004 Sofia Silva"
        then putStrLn "Compiladores\nTópicos"
    else 
        putStrLn "Esse aluno não existe"