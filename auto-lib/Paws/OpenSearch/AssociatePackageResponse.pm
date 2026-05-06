
package Paws::OpenSearch::AssociatePackageResponse;
  use Moose;
  has DomainPackageDetails => (is => 'ro', isa => 'Paws::OpenSearch::DomainPackageDetails');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::AssociatePackageResponse

=head1 ATTRIBUTES


=head2 DomainPackageDetails => L<Paws::OpenSearch::DomainPackageDetails>

Information about a package that is associated with a domain.


=head2 _request_id => Str


=cut

