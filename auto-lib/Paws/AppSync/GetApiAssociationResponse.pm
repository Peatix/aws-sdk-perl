
package Paws::AppSync::GetApiAssociationResponse;
  use Moose;
  has ApiAssociation => (is => 'ro', isa => 'Paws::AppSync::ApiAssociation', traits => ['NameInRequest'], request_name => 'apiAssociation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::GetApiAssociationResponse

=head1 ATTRIBUTES


=head2 ApiAssociation => L<Paws::AppSync::ApiAssociation>

The C<ApiAssociation> object.


=head2 _request_id => Str


=cut

