module Monoid where
open import Relation.Binary.PropositionalEquality
infixr 1 _*_

record Monoid : Set₁ where
  field 
    S : Set
    _*_ : S → S → S
    e : S

    *-associative : ∀ (a b c : S) →
      (a * b) * c ≡ a * (b * c)
    
    e-identityL : ∀ (x : S) → e * x ≡ x
    e-identityR : ∀ (x : S) → x * e ≡ x
