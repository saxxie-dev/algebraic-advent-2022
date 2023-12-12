module Band where 
open import Relation.Binary.PropositionalEquality

record Band : Set₁ where
  field 
    S : Set
    _*_ : S → S → S

    *-associative : ∀ (a b c : S) →
      (a * b) * c ≡ a * (b * c)

    *-idempotent : ∀ (x : S) → x * x ≡ x 

