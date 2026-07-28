import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsCanonicalLaneLean

structure SlowFastSystem where
  slowVariable : Type u
  fastVariable : Type v
  slowEquation : slowVariable → fastVariable → slowVariable
  fastEquation : slowVariable → fastVariable → fastVariable
  smallParameter : ℝ
  slowFastStructure : Prop
  canardCondition : Prop

structure CanardSystem where
  system : SlowFastSystem
  singularPoint : system.slowVariable × system.fastVariable
  canardSolutionExists : Prop
  canardSolution : Prop

def CanardWitnessClosed (O : CanardAdmittedObject) : Prop :=
  O.canardSolution

end CanardSolutionsCanonicalLaneLean
end HautevilleHouse
