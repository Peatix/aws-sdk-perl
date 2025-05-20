
package Paws::Bedrock::UpdateGuardrailResponse;
  use Moose;
  has GuardrailArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'guardrailArn', required => 1);
  has GuardrailId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'guardrailId', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt', required => 1);
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::UpdateGuardrailResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> GuardrailArn => Str

The ARN of the guardrail.


=head2 B<REQUIRED> GuardrailId => Str

The unique identifier of the guardrail


=head2 B<REQUIRED> UpdatedAt => Str

The date and time at which the guardrail was updated.


=head2 B<REQUIRED> Version => Str

The version of the guardrail.


=head2 _request_id => Str


=cut

