import CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean.BridgeLemmas
import CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

def ConstrainedCanardClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem canard_endgame (A : AdmissibleClass) : ConstrainedCanardClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end
end