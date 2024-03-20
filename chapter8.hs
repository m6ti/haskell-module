data Nat = Zero | Succ Nat


nat2int :: Nat -> Int
nat2int Zero = 0
nat2int (Succ n) = 1 + nat2int n

int2nat :: Int -> Nat
int2nat 0 = Zero
int2nat n = Succ (int2nat (n-1))

add :: Nat -> Nat -> Nat
--add m n = int2nat (nat2int m + nat2int n)
add Zero n = n 
add (Succ m) n = Succ (add m n)

mul :: Nat -> Nat -> Nat
mul Zero _ = Zero
mul (Succ m) n = add (mul m n) n




data Answer = Yes | No | Unknown
answers :: [Answer]
answers = [Yes,No,Unknown]
flip :: Answer -> Answer
flip Yes = No
flip No = Yes
flip Unknown = Unknown

data Expr = Val Int
        | Add Expr Expr
        | Mul Expr Expr

eval :: Expr -> Int
eval (Val n) = n
eval (Add x y) = eval x + eval y
eval (Mul x y) = eval x * eval y

folde f g h (Val n)   = f n
folde f g h (Add x y) = g (folde f g h x) (folde f g h y)
folde f g h (Mul x y) = h (folde f g h x) (folde f g h y)

eval2 = folde id (+) (*)

ex = Add (Val 1) (Mul (Val 2) (Val 3))









