import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure FenichelNormalForm where
  system : SlowFastSystem
  coordinateChange : (ℝ^system.fastVariableDim × ℝ^system.slowVariableDim) → (ℝ^system.fastVariableDim × ℝ^system.slowVariableDim)
  transformedEquations : (ℝ^system.fastVariableDim × ℝ^system.slowVariableDim) → (ℝ^system.fastVariableDim × ℝ^system.slowVariableDim)
  normalFormAchieved : Prop
  persistenceOfInvariantManifold : Prop

def FenichelNormalFormClosed (F : FenichelNormalForm) : Prop :=
  F.normalFormAchieved ∧ F.persistenceOfInvariantManifold

end CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse