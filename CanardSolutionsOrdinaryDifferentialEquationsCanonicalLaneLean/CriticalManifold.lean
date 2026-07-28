import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure CriticalManifoldPackage {P : SlowFastSystemPackage} where
  manifoldSet : Set (P.fastVariable × P.slowVariable)
  foldingPoint : (P.fastVariable × P.slowVariable) → Prop
  normalHyperbolicity : Prop
  foldingCondition : Prop

structure CriticalManifoldEvidence {P : SlowFastSystemPackage} (C : CriticalManifoldPackage P) where
  manifoldSetDefined : Prop
  foldingPointDefined : Prop
  normalHyperbolicityClosed : C.normalHyperbolicity
  foldingConditionClosed : C.foldingCondition

def CriticalManifoldClosed {P : SlowFastSystemPackage} (C : CriticalManifoldPackage P) : Prop :=
  C.normalHyperbolicity ∧ C.foldingCondition

theorem critical_manifold_closed_from_evidence {P : SlowFastSystemPackage} (C : CriticalManifoldPackage P)
    (E : CriticalManifoldEvidence C) : CriticalManifoldClosed C := by
  exact And.intro E.normalHyperbolicityClosed E.foldingConditionClosed

end CanardSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
