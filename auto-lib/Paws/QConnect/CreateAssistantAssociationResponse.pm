
package Paws::QConnect::CreateAssistantAssociationResponse;
  use Moose;
  has AssistantAssociation => (is => 'ro', isa => 'Paws::QConnect::AssistantAssociationData', traits => ['NameInRequest'], request_name => 'assistantAssociation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::CreateAssistantAssociationResponse

=head1 ATTRIBUTES


=head2 AssistantAssociation => L<Paws::QConnect::AssistantAssociationData>

The assistant association.


=head2 _request_id => Str


=cut

