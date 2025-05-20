
package Paws::FSX::UpdateDataRepositoryAssociationResponse;
  use Moose;
  has Association => (is => 'ro', isa => 'Paws::FSX::DataRepositoryAssociation');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::UpdateDataRepositoryAssociationResponse

=head1 ATTRIBUTES


=head2 Association => L<Paws::FSX::DataRepositoryAssociation>

The response object returned after the data repository association is
updated.


=head2 _request_id => Str


=cut

1;