
package Paws::Bedrock::CreateGuardrailVersionResponse;
  use Moose;
  has GuardrailId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'guardrailId', required => 1);
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::CreateGuardrailVersionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> GuardrailId => Str

The unique identifier of the guardrail.


=head2 B<REQUIRED> Version => Str

The number of the version of the guardrail.


=head2 _request_id => Str


=cut

