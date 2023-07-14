
data Newtype
    = MkNewtype () Int ()

Show Newtype where
    show (MkNewtype a b c) = "MkNewtype \{show a} \{show b} \{show c}"

newtype : () -> Newtype
newtype x = MkNewtype x 44 x

data ShiftedArgs
    = MkShiftedArgs () String String

Show ShiftedArgs where
    show (MkShiftedArgs _ x y) = x ++ " " ++ y

main : IO ()
main = do
    printLn $ newtype ()
    printLn $ MkShiftedArgs () "Hello," "World!"
