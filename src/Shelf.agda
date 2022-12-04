module Shelf where 
open import Relation.Binary.PropositionalEquality
infixr 1 _*_

record LeftShelf : Set₁ where 
  field
    S : Set
    _*_ : S → S → S

    *-self-distributes : ∀ (a b c : S) →
      a * (b * c) ≡ (a * b) * (a * c)


record RightShelf : Set₁ where 
  field
    S : Set
    _*_ : S → S → S

    *-self-distributes : ∀ (a b c : S) →
      (a * b) * c ≡ (a * b) * (b * c)