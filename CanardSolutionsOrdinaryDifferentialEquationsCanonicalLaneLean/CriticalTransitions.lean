import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanardSolutionsCanonicalLaneLean.SlowManifold

namespace HautevilleHouse
namespace CanardSolutionsCanonicalLaneLean

structure CriticalTransition where
  system : SlowFastSystem
  slowManifold : SlowManifold
  bifurcationParameter : ℝ
  canardExplosion : Prop
  maxCanardTime : ℝ
  explosionCondition : Prop

structure CriticalTransitionEvidence (C : CriticalTransition) where
  canardExplosionClosed : C.canardExplosion
  explosionConditionClosed : C.explosionCondition

def CriticalTransitionClosed (C : CriticalTransition) : Prop :=
  C.canardExplosion ∧ C.explosionCondition

theorem critical_transition_closed_from_evidence (C : CriticalTransition)
    (E : CriticalTransitionEvidence C) : CriticalTransitionClosed C := by
  exact And.intro E.canardExplosionClosed E.explosionConditionClosed

end CanardSolutionsCanonicalLaneLean
end HautevilleHouse
