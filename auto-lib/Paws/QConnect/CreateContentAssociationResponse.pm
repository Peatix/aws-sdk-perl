
package Paws::QConnect::CreateContentAssociationResponse;
  use Moose;
  has ContentAssociation => (is => 'ro', isa => 'Paws::QConnect::ContentAssociationData', traits => ['NameInRequest'], request_name => 'contentAssociation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::CreateContentAssociationResponse

=head1 ATTRIBUTES


=head2 ContentAssociation => L<Paws::QConnect::ContentAssociationData>

The association between Amazon Q in Connect content and another
resource.


=head2 _request_id => Str


=cut

