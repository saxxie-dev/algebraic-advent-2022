module UnitalMagma where
open import Relation.Binary.PropositionalEquality

record UnitalMagma : Set₁ where
  field 
    S : Set
    _*_ : S → S → S
    e : S

    e-identityL : ∀ (x : S) → e * x ≡ x
    e-identityR : ∀ (x : S) → x * e ≡ x
