module BoundedSemilattice where 
open import Relation.Binary.PropositionalEquality

record BoundedSemilattice : Set₁ where
  field 
    S : Set
    _∧_ : S → S → S
    ⊤ : S

    ∧-associative : ∀ (a b c : S) →
      (a ∧ b) ∧ c ≡ a ∧ (b ∧ c)

    ∧-commutative : ∀ (x y : S) →
      x ∧ y ≡ y ∧ x 

    ∧-idempotent : ∀ (x : S) → x ∧ x ≡ x 

    ⊤-identityL : ∀ (x : S) → ⊤ ∧ x ≡ x 
    ⊤-identityR : ∀ (x : S) → x ∧ ⊤ ≡ x

