import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure CanardSystemType where
  slowVariable : Type u
  fastVariable : Type v
  slowEquation : slowVariable → fastVariable → slowVariable
  fastEquation : slowVariable → fastVariable → fastVariable
  smallParameter : ℝ
  slowManifold : Set (slowVariable × fastVariable)
  slowManifoldIsManifold : Prop
  canardCondition : Prop

structure CanardAdmittedObject where
  system : CanardSystemType
  slowManifoldExists : system.slowManifoldIsManifold
  canardConditionHolds : system.canardCondition
  conclusion : Prop  -- e.g., existence of a canard solution

def CanardWitnessClosed (O : CanardAdmittedObject) : Prop :=
  O.conclusion

end CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse