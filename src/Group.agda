module Group where
open import Relation.Binary.PropositionalEquality

record Group : Set₁ where
  infixr 5 _*_
  infix 6 _⁻¹
  field 
    S : Set
    _*_ : S → S → S
    e : S
    _⁻¹ : S → S

    *-associative : ∀ (a b c : S) →
      (a * b) * c ≡ a * (b * c)
    
    e-identityL : ∀ (x : S) → e * x ≡ x
    e-identityR : ∀ (x : S) → x * e ≡ x

    right-inverse : ∀ (x : S) → x * x ⁻¹ ≡ e
    left-inverse : ∀ (x : S) → x ⁻¹ * x ≡ e
