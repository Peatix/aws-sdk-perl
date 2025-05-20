
package Paws::Bedrock::CreateGuardrailResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has GuardrailArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'guardrailArn', required => 1);
  has GuardrailId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'guardrailId', required => 1);
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::CreateGuardrailResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The time at which the guardrail was created.


=head2 B<REQUIRED> GuardrailArn => Str

The ARN of the guardrail.


=head2 B<REQUIRED> GuardrailId => Str

The unique identifier of the guardrail that was created.


=head2 B<REQUIRED> Version => Str

The version of the guardrail that was created. This value will always
be C<DRAFT>.


=head2 _request_id => Str


=cut

