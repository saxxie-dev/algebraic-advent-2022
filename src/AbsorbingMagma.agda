module AbsorbingMagma where
open import Relation.Binary.PropositionalEquality

record AbsorbingMagma : Set₁ where
  field 
    S : Set
    _*_ : S → S → S
    O : S 

    O-left-absorbs : ∀(x : S) → O * x ≡ O 
    O-right-absorbs : ∀(x : S) → x * O ≡ O
