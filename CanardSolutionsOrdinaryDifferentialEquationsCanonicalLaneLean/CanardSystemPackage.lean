import HautevilleHouse.CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean.CanardAdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure CanardSystemPackage (C : CanardSystemType) where
  fastSubsystem : C.fastVariable → C.fastVariable
  slowSubsystem : C.slowVariable → C.fastVariable → C.slowVariable
  singularPerturbationParameter : ℝ
  layerProblem : Prop
  reducedProblem : Prop
  layerProblemHolds : layerProblem
  reducedProblemHolds : reducedProblem
  parameterPositive : singularPerturbationParameter > 0

structure CanardSystemEvidence {C : CanardSystemType} (P : CanardSystemPackage C) where
  layerProblemClosed : P.layerProblem
  reducedProblemClosed : P.reducedProblem

def CanardSystemClosed {C : CanardSystemType} (P : CanardSystemPackage C) : Prop :=
  P.layerProblem ∧ P.reducedProblem ∧ P.parameterPositive

theorem canard_system_closed_from_evidence {C : CanardSystemType} (P : CanardSystemPackage C) (E : CanardSystemEvidence P) : CanardSystemClosed P :=
  And.intro E.layerProblemClosed (And.intro E.reducedProblemClosed P.parameterPositive)

end CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse