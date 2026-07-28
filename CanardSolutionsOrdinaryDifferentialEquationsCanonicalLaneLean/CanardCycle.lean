import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure CanardCyclePackage {P : SlowFastSystemPackage} {C : CriticalManifoldPackage P} where
  cycleSet : Set (P.fastVariable × P.slowVariable × ℝ)
  canardExplosion : Prop
  cyclePeriod : ℝ
  explosionTime : ℝ

def CanardCycleEvidence {P : SlowFastSystemPackage} {C : CriticalManifoldPackage P} (S : CanardCyclePackage P C) where
  cycleSetClosed : S.cycleSet ≠ ∅
  canardExplosionClosed : S.canardExplosion
  cyclePeriodPositive : S.cyclePeriod > 0
  explosionTimeFinite : S.explosionTime < ∞

def CanardCycleClosed {P : SlowFastSystemPackage} {C : CriticalManifoldPackage P} (S : CanardCyclePackage P C) : Prop :=
  S.canardExplosion ∧ S.cyclePeriod > 0 ∧ S.explosionTime < ∞ ∧ S.cycleSet ≠ ∅

theorem canard_cycle_closed_from_evidence {P : SlowFastSystemPackage} {C : CriticalManifoldPackage P}
    (S : CanardCyclePackage P C) (E : CanardCycleEvidence S) : CanardCycleClosed S := by
  exact And.intro E.canardExplosionClosed
    (And.intro E.cyclePeriodPositive (And.intro E.explosionTimeFinite E.cycleSetClosed))

end CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
