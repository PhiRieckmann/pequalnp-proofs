import PEqualNP.Defs
import PEqualNP.Library.Helpers.Replay
import PEqualNP.Library.Helpers.ReplayCol

-- L-meta-22779: a circuit of 5 gates found by exact SAT synthesis (CaDiCaL), checked on every input
-- by one kernel evaluation over the truth-table columns (PEqualNP.Library.Helpers.ReplayCol).

namespace PEqualNP.Outside.L_meta_22779

open PEqualNP.CircuitLowerBounds

def circ : Circuit := ⟨[⟨GateOp.not, [5]⟩, ⟨GateOp.not, [4]⟩, ⟨GateOp.and, [1, 7]⟩, ⟨GateOp.or, [0, 8]⟩, ⟨GateOp.and, [6, 9]⟩], 10⟩

end PEqualNP.Outside.L_meta_22779

theorem PEqualNP.Outside.L_meta_22779 : ∃ C : PEqualNP.CircuitLowerBounds.Circuit, PEqualNP.MetaComplexity.FanInTwo C ∧ C.size ≤ 5 ∧ ∀ i j : Fin 6, C.eval (List.ofFn fun k : Fin 6 => decide (k = i ∨ k = j)) = (927 : ℕ).testBit (6 * min i.val j.val + max i.val j.val) :=
  ⟨PEqualNP.Outside.L_meta_22779.circ, PEqualNP.Library.Helpers.Replay.fanInTwoB_sound (by decide +kernel), by decide +kernel, by decide +kernel⟩
