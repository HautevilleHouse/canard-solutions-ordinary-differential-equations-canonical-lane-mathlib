import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure CanardObject where
  epsilon : ℝ
  slowManifoldEquation : ℝ → ℝ
  fastDynamics : ℝ × ℝ → ℝ
  canardCondition : Prop
  explosionConclusion : Prop

structure AdmissibleClass where
  object : CanardObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end
end