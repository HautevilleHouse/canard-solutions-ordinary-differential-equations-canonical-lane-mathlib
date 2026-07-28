import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure CanardSolution where
  system : SlowFastSystem
  initialCondition : ℝ^system.fastVariableDim × ℝ^system.slowVariableDim
  trajectoryThroughCanard : Prop
  crossingConservedQuantity : Prop
  canardTrajectoryExists : Prop
  stabilityAnalysisDone : Prop

def CanardSolutionClosed (C : CanardSolution) : Prop :=
  C.trajectoryThroughCanard ∧ C.crossingConservedQuantity ∧ C.canardTrajectoryExists ∧ C.stabilityAnalysisDone

end CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse