import HautevilleHouse.CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean.SlowManifoldPackage

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure CanardSolutionPackage {C : CanardSystemType} {P : CanardSystemPackage C} {M : SlowManifoldPackage P} where
  canardTrajectory : ℝ → C.slowVariable × C.fastVariable
  followsSlowManifold : Set.range canardTrajectory ⊆ M.manifold
  fastTransition : Prop
  canardSolutionExists : Prop
  canardSolutionExistsEvidence : canardSolutionExists

structure CanardSolutionEvidence {C : CanardSystemType} {P : CanardSystemPackage C} {M : SlowManifoldPackage P} (S : CanardSolutionPackage P M) where
  followsSlowManifoldClosed : S.followsSlowManifold
  fastTransitionClosed : S.fastTransition

def CanardSolutionClosed {C : CanardSystemType} {P : CanardSystemPackage C} {M : SlowManifoldPackage P} (S : CanardSolutionPackage P M) : Prop :=
  S.followsSlowManifold ∧ S.fastTransition ∧ S.canardSolutionExists

theorem canard_solution_closed_from_evidence {C : CanardSystemType} {P : CanardSystemPackage C} {M : SlowManifoldPackage P} (S : CanardSolutionPackage P M) (E : CanardSolutionEvidence S) : CanardSolutionClosed S :=
  And.intro E.followsSlowManifoldClosed (And.intro E.fastTransitionClosed S.canardSolutionExistsEvidence)

end CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse