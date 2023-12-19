module HeytingSemilattice where 
open import Relation.Binary.PropositionalEquality

record HeytingSemilattice : Set₁ where
  field 
    S : Set
    _∧_ : S → S → S
    ⊤ : S
    _=>_ : S → S → S

    ∧-associative : ∀ (a b c : S) →
      (a ∧ b) ∧ c ≡ a ∧ (b ∧ c)

    ∧-commutative : ∀ (x y : S) →
      x ∧ y ≡ y ∧ x 

    ∧-idempotent : ∀ (x : S) → x ∧ x ≡ x 

    ⊤-identityL : ∀ (x : S) → ⊤ ∧ x ≡ x 
    ⊤-identityR : ∀ (x : S) → x ∧ ⊤ ≡ x

    -- Heyting implication laws 
    =>reflexivity : ∀(x : S) → 
      x => x ≡ ⊤
    =>distributivity : ∀(x y z : S) → 
      (x => (y ∧ z)) ≡ (x => y) ∧ (x => z)
    =>absorbtion : ∀(x y : S) →
      x ∧ (y => x) ≡ x
    =>evaluation : ∀(x y : S) →
      x ∧ (x => y) ≡ x ∧ y

