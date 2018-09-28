import Data.Char

dict :: Char -> String
dict 'a' = "@"
dict 'b' = "8"
dict 'c' = "("
dict 'd' = "|)"
dict 'e' = "3"
dict 'f' = "#"
dict 'g' = "6"
dict 'h' = "[-]"
dict 'i' = "|"
dict 'j' = "_|"
dict 'k' = "|<"
dict 'l' = "1"
dict 'm' = "[]\\/[]"
dict 'n' = "[]\\[]"
dict 'o' = "0"
dict 'p' = "|D"
dict 'q' = "(,)"
dict 'r' = "|Z"
dict 's' = "$"
dict 't' = "']['"
dict 'u' = "|_|"
dict 'v' = "\\/"
dict 'w' = "\\/\\/"
dict 'x' = "}{"
dict 'y' = "`/"
dict 'z' = "2"
dict x = [x]

main = do
    s <- getLine
    let ans = map (dict . toLower) s
    putStrLn $ concat ans