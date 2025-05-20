
package Paws::FSX::CreateDataRepositoryAssociationResponse;
  use Moose;
  has Association => (is => 'ro', isa => 'Paws::FSX::DataRepositoryAssociation');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CreateDataRepositoryAssociationResponse

=head1 ATTRIBUTES


=head2 Association => L<Paws::FSX::DataRepositoryAssociation>

The response object returned after the data repository association is
created.


=head2 _request_id => Str


=cut

1;