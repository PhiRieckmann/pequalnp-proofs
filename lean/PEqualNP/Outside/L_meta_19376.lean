import PEqualNP.Defs
import PEqualNP.Library.Helpers.Replay
import PEqualNP.Library.Helpers.ReplayCol

-- L-meta-19376: a circuit of 8 gates found by exact SAT synthesis (CaDiCaL), checked on every input
-- by one kernel evaluation over the truth-table columns (PEqualNP.Library.Helpers.ReplayCol).

namespace PEqualNP.Outside.L_meta_19376

open PEqualNP.CircuitLowerBounds

def circ : Circuit := ⟨[⟨GateOp.or, [0, 7]⟩, ⟨GateOp.or, [2, 6]⟩, ⟨GateOp.or, [5, 11]⟩, ⟨GateOp.or, [1, 12]⟩, ⟨GateOp.or, [7, 13]⟩, ⟨GateOp.and, [10, 13]⟩, ⟨GateOp.not, [15]⟩, ⟨GateOp.and, [14, 16]⟩], 17⟩

end PEqualNP.Outside.L_meta_19376

theorem PEqualNP.Outside.L_meta_19376 : ∃ C : PEqualNP.CircuitLowerBounds.Circuit, PEqualNP.MetaComplexity.FanInTwo C ∧ C.size ≤ 8 ∧ PEqualNP.Represents.Represents (fun u v : Fin 5 => (7597924 : ℕ).testBit (5 * u.val + v.val)) C :=
  ⟨PEqualNP.Outside.L_meta_19376.circ, PEqualNP.Library.Helpers.Replay.fanInTwoB_sound (by decide +kernel), by decide +kernel, by decide +kernel⟩
