
package Paws::BedrockAgent::ValidateFlowDefinitionResponse;
  use Moose;
  has Validations => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::FlowValidation]', traits => ['NameInRequest'], request_name => 'validations', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::ValidateFlowDefinitionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Validations => ArrayRef[L<Paws::BedrockAgent::FlowValidation>]

Contains an array of objects, each of which contains an error
identified by validation.


=head2 _request_id => Str


=cut

