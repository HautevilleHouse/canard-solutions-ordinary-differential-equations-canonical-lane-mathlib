import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanardSolutionsCanonicalLaneLean.CriticalTransitions

namespace HautevilleHouse
namespace CanardSolutionsCanonicalLaneLean

structure GeometricSingularPerturbation where
  system : SlowFastSystem
  slowManifold : SlowManifold
  criticalTransition : CriticalTransition
  perturbationParameter : ℝ
  canardSolutionGlued : Prop
  asymptoticMatching : Prop

structure GSDEvidence (G : GeometricSingularPerturbation) where
  canardSolutionGluedClosed : G.canardSolutionGlued
  asymptoticMatchingClosed : G.asymptoticMatching

def GeometricSingularPerturbationClosed (G : GeometricSingularPerturbation) : Prop :=
  G.canardSolutionGlued ∧ G.asymptoticMatching

theorem geometric_singular_perturbation_closed_from_evidence
    (G : GeometricSingularPerturbation) (E : GSDEvidence G) :
    GeometricSingularPerturbationClosed G := by
  exact And.intro E.canardSolutionGluedClosed E.asymptoticMatchingClosed

end CanardSolutionsCanonicalLaneLean
end HautevilleHouse
