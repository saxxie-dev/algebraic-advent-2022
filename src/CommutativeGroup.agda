module CommutativeGroup where
open import Relation.Binary.PropositionalEquality  


record CommutativeGroup : Set₁ where
  infixr 5 _+_
  infixl 6 -
  field 
    S : Set
    _+_ : S → S → S
    e : S
    -_ : S → S

    +-associative : ∀ (a b c : S) →
      (a + b) + c ≡ a + (b + c)
    
    +-commutative : ∀ (x y : S) → 
      x + y ≡ y + x
    
    -- Identity laws
    e-identityL : ∀ (x : S) → e + x ≡ x
    e-identityR : ∀ (x : S) → x + e ≡ x

    -- Inverse laws
    right-inverse : ∀ (x : S) → x + - x ≡ e
    left-inverse : ∀ (x : S) →  - x + x ≡ e
