module Magma where
open import Relation.Binary.PropositionalEquality

record Magma : Set₁ where
  field 
    S : Set
    _*_ : S → S → S
