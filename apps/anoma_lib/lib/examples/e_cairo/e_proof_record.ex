defmodule Examples.ECairo.EProofRecord do
  use Memoize

  alias Examples.ECairo.EComplianceInput
  alias Anoma.CairoResource.ProofRecord

  @spec a_compliance_proof() :: ProofRecord.t()
  defmemo a_compliance_proof do
    compliance_inputs = EComplianceInput.a_compliance_input()
    {:ok, proof} = ProofRecord.generate_compliance_proof(compliance_inputs)

    proof
  end
end