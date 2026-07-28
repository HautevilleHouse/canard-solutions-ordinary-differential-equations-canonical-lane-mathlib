import canonicalLaneMathlib.AdmissibleClass
import CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.explosionConclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.explosionConclusion

end
end