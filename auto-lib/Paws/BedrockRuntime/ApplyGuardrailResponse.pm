
package Paws::BedrockRuntime::ApplyGuardrailResponse;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'action', required => 1);
  has ActionReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionReason');
  has Assessments => (is => 'ro', isa => 'ArrayRef[Paws::BedrockRuntime::GuardrailAssessment]', traits => ['NameInRequest'], request_name => 'assessments', required => 1);
  has GuardrailCoverage => (is => 'ro', isa => 'Paws::BedrockRuntime::GuardrailCoverage', traits => ['NameInRequest'], request_name => 'guardrailCoverage');
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::BedrockRuntime::GuardrailOutputContent]', traits => ['NameInRequest'], request_name => 'outputs', required => 1);
  has Usage => (is => 'ro', isa => 'Paws::BedrockRuntime::GuardrailUsage', traits => ['NameInRequest'], request_name => 'usage', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockRuntime::ApplyGuardrailResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

The action taken in the response from the guardrail.

Valid values are: C<"NONE">, C<"GUARDRAIL_INTERVENED">
=head2 ActionReason => Str

The reason for the action taken when harmful content is detected.


=head2 B<REQUIRED> Assessments => ArrayRef[L<Paws::BedrockRuntime::GuardrailAssessment>]

The assessment details in the response from the guardrail.


=head2 GuardrailCoverage => L<Paws::BedrockRuntime::GuardrailCoverage>

The guardrail coverage details in the apply guardrail response.


=head2 B<REQUIRED> Outputs => ArrayRef[L<Paws::BedrockRuntime::GuardrailOutputContent>]

The output details in the response from the guardrail.


=head2 B<REQUIRED> Usage => L<Paws::BedrockRuntime::GuardrailUsage>

The usage details in the response from the guardrail.


=head2 _request_id => Str


=cut

