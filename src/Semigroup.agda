module Semigroup where
open import Relation.Binary.PropositionalEquality
infixr 1 _*_

record Semigroup : Set₁ where
  field 
    S : Set
    _*_ : S → S → S

    *-associative : ∀ (a b c : S) →
      (a * b) * c ≡ a * (b * c)