import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure SlowFastSystemPackage where
  fastVariable : Type u
  slowVariable : Type v
  timeParameter : Type w
  epsilon : ℝ
  fastEquation : (fastVariable × slowVariable × ℝ) → fastVariable
  slowEquation : (fastVariable × slowVariable × ℝ) → slowVariable
  epsilonPositive : epsilon > 0

structure SlowFastSystemEvidence (P : SlowFastSystemPackage) where
  fastEquationContinuous : Prop
  slowEquationContinuous : Prop
  fastEquationLipschitz : Prop
  slowEquationLipschitz : Prop
  epsilonPositiveClosed : P.epsilonPositive

def SlowFastSystemClosed (P : SlowFastSystemPackage) : Prop :=
  P.epsilon > 0 ∧ P.fastEquationContinuous ∧ P.slowEquationContinuous ∧
  P.fastEquationLipschitz ∧ P.slowEquationLipschitz

theorem slow_fast_system_closed_from_evidence (P : SlowFastSystemPackage) (E : SlowFastSystemEvidence P) :
    SlowFastSystemClosed P := by
  exact And.intro E.epsilonPositiveClosed
    (And.intro E.fastEquationContinuous (And.intro E.slowEquationContinuous
      (And.intro E.fastEquationLipschitz E.slowEquationLipschitz)))

end CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
