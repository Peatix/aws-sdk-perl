
package Paws::AppSync::UpdateSourceApiAssociationResponse;
  use Moose;
  has SourceApiAssociation => (is => 'ro', isa => 'Paws::AppSync::SourceApiAssociation', traits => ['NameInRequest'], request_name => 'sourceApiAssociation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::UpdateSourceApiAssociationResponse

=head1 ATTRIBUTES


=head2 SourceApiAssociation => L<Paws::AppSync::SourceApiAssociation>

The C<SourceApiAssociation> object data.


=head2 _request_id => Str


=cut

