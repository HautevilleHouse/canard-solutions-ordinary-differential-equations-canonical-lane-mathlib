import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanardSolutionsCanonicalLaneLean.CanardSystem

namespace HautevilleHouse
namespace CanardSolutionsCanonicalLaneLean

structure SlowManifold where
  system : SlowFastSystem
  manifoldEquation : system.slowVariable → system.fastVariable → Prop
  normallyHyperbolic : Prop
  slowManifoldExists : Prop
  slowDynamics : Prop

structure SlowManifoldEvidence (S : SlowManifold) where
  manifoldEquationClosed : S.manifoldEquation
  normallyHyperbolicClosed : S.normallyHyperbolic
  slowManifoldExistsClosed : S.slowManifoldExists

def SlowManifoldClosed (S : SlowManifold) : Prop :=
  S.manifoldEquation ∧ S.normallyHyperbolic ∧ S.slowManifoldExists

theorem slow_manifold_closed_from_evidence (S : SlowManifold) (E : SlowManifoldEvidence S) :
    SlowManifoldClosed S := by
  exact And.intro E.manifoldEquationClosed
    (And.intro E.normallyHyperbolicClosed E.slowManifoldExistsClosed)

end CanardSolutionsCanonicalLaneLean
end HautevilleHouse
