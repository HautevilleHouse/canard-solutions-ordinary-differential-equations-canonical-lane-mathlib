import CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean.CriticalManifold

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure CanardExistencePackage (S : SlowFastSystem) (C : CriticalManifoldPackage S) where
  solutionCurve : ℝ → S.slowVariable × S.fastVariable
  initialCondition : ℝ
  asymptoticMatch : Prop
  canardEndpoint : Prop

def CanardExistenceClosed (S : SlowFastSystem) (C : CriticalManifoldPackage S) (E : CanardExistencePackage S C) : Prop :=
  E.asymptoticMatch ∧ E.canardEndpoint

structure CanardExistenceEvidence (S : SlowFastSystem) (C : CriticalManifoldPackage S) (E : CanardExistencePackage S C) where
  asymptoticMatchClosed : E.asymptoticMatch
  canardEndpointClosed : E.canardEndpoint

theorem canard_existence_closed_from_evidence (S : SlowFastSystem) (C : CriticalManifoldPackage S) (E : CanardExistencePackage S C) (Ev : CanardExistenceEvidence S C E) :
    CanardExistenceClosed S C E := by
  exact And.intro Ev.asymptoticMatchClosed Ev.canardEndpointClosed

end CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse