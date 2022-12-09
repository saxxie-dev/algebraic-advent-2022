module Quasigroup where
open import Relation.Binary.PropositionalEquality
infixr 1 _\\_
infixr 1 _//_
infixr 1 _*_ 

record Quasigroup : Set₁ where
  field 
    S : Set
    _*_ : S → S → S

    _//_ : S → S → S
    _\\_ : S → S → S 

    IL : ∀ (x y : S) → y \\ (y * x) ≡ x
    IR : ∀ (x y : S) → (x * y) // y ≡ x
    SL : ∀ (x y : S) → y * (y \\ x) ≡ x
    SR : ∀ (x y : S) → (x // y) * y ≡ x
