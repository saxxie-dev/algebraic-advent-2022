module DivisibleGroup where
open import Relation.Binary.PropositionalEquality
open import Data.Nat.Base using (ℕ)

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

exponential : (G : Group) → (g : Group.S G) → ℕ → (Group.S G)
exponential G g ℕ.zero = Group.e G
exponential G g (ℕ.suc n) = (G Group.* g) (exponential G g n)

record DivisibleGroup : Set₂ where
  field
    group : Group
  
  open Group group public
  _^_ : S → ℕ → S
  _^_ = exponential group
  field
    _√_ : ℕ → S → S 
    ^-inverts-√ : ∀(n : ℕ) (x : S)  →  (n √ x) ^ n ≡ x

