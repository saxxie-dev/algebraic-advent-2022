module IdempotentMagma where 
open import Relation.Binary.PropositionalEquality

record IdempotentMagma : Set₁ where
  field 
    S : Set
    _*_ : S → S → S

    *-idempotent : ∀ (x : S) → x * x ≡ x 
