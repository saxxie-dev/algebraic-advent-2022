module Rack where 
open import Relation.Binary.PropositionalEquality
infixr 1 _▹_
infixr 1 _◃_

record Rack : Set₁ where 
  field
    S : Set   
    _◃_ : S → S → S
    _▹_ : S → S → S

    -- Shelf laws
    ◃-left-distributes : ∀ (a b c : S) →
      a ◃ (b ◃ c) ≡ (a ◃ b) ◃ (a ◃ c)
    ▹-right-distributes : ∀ (a b c : S) →
      (a ▹ b) ▹ c ≡ (a ▹ c) ▹ (b ▹ c)

    -- Quasigroup laws
    IL :  ∀ (a b : S) → (a ◃ b) ▹ a ≡ b
    IR : ∀ (a b : S) → a ◃ (b ▹ a) ≡ b
