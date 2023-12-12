module CommutativeMagma where 
open import Relation.Binary.PropositionalEquality

record CommutativeMagma : Set₁ where
  field 
    S : Set
    _*_ : S → S → S

    *-commutative : ∀ (x y : S) → x * y ≡ y * x 
