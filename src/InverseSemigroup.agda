module InverseSemigroup where
open import Relation.Binary.PropositionalEquality

record InverseSemigroup : Set₁ where
  infixr 5 _*_
  infix 6 _⁻¹
  field 
    S : Set
    _*_ : S → S → S
    _⁻¹ : S → S

    *-associative : ∀ (a b c : S) →
      (a * b) * c ≡ a * (b * c)

    right-inverse : ∀ (x : S) →
      (x * x ⁻¹ * x) ≡ x
    left-inverse : ∀ (x : S) → 
      (x ⁻¹ * x * x ⁻¹) ≡ x ⁻¹
 