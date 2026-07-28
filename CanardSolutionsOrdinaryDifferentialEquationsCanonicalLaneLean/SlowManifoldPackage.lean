import HautevilleHouse.CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean.CanardSystemPackage

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure SlowManifoldPackage {C : CanardSystemType} (P : CanardSystemPackage C) where
  manifold : Set (C.slowVariable × C.fastVariable)
  manifoldIsInvariant : Prop
  normalHyperbolicity : Prop
  criticalityCondition : Prop
  manifoldMatches : manifold = C.slowManifold

structure SlowManifoldEvidence {C : CanardSystemType} {P : CanardSystemPackage C} (M : SlowManifoldPackage P) where
  invariantClosed : M.manifoldIsInvariant
  normalHyperbolicityClosed : M.normalHyperbolicity
  criticalityConditionClosed : M.criticalityCondition

def SlowManifoldClosed {C : CanardSystemType} {P : CanardSystemPackage C} (M : SlowManifoldPackage P) : Prop :=
  M.manifoldIsInvariant ∧ M.normalHyperbolicity ∧ M.criticalityCondition ∧ M.manifoldMatches

theorem slow_manifold_closed_from_evidence {C : CanardSystemType} {P : CanardSystemPackage C} (M : SlowManifoldPackage P) (E : SlowManifoldEvidence M) : SlowManifoldClosed M :=
  And.intro E.invariantClosed (And.intro E.normalHyperbolicityClosed (And.intro E.criticalityConditionClosed M.manifoldMatches))

end CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse