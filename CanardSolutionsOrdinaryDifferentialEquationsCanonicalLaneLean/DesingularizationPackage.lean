import HautevilleHouse.CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean.CanardSolutionPackage

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure DesingularizationPackage {C : CanardSystemType} {P : CanardSystemPackage C} {M : SlowManifoldPackage P} {S : CanardSolutionPackage P M} where
  blowUpSpace : Type u
  desingularizedSystem : blowUpSpace → blowUpSpace
  regularProjection : blowUpSpace → C.slowVariable × C.fastVariable
  blowUpCoordinates : Prop
  desingularizationValid : Prop
  canardLift : Prop
  liftEvidence : canardLift

structure DesingularizationEvidence {C : CanardSystemType} {P : CanardSystemPackage C} {M : SlowManifoldPackage P} {S : CanardSolutionPackage P M} (D : DesingularizationPackage P M S) where
  blowUpCoordinatesClosed : D.blowUpCoordinates
  desingularizationValidClosed : D.desingularizationValid

def DesingularizationClosed {C : CanardSystemType} {P : CanardSystemPackage C} {M : SlowManifoldPackage P} {S : CanardSolutionPackage P M} (D : DesingularizationPackage P M S) : Prop :=
  D.blowUpCoordinates ∧ D.desingularizationValid ∧ D.canardLift

theorem desingularization_closed_from_evidence {C : CanardSystemType} {P : CanardSystemPackage C} {M : SlowManifoldPackage P} {S : CanardSolutionPackage P M} (D : DesingularizationPackage P M S) (E : DesingularizationEvidence D) : DesingularizationClosed D :=
  And.intro E.blowUpCoordinatesClosed (And.intro E.desingularizationValidClosed D.liftEvidence)

end CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse