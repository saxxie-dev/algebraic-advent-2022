module PointedMagma where
open import Relation.Binary.PropositionalEquality

record PointedMagma : Set₁ where
  field 
    S : Set
    _*_ : S → S → S
    s : S
