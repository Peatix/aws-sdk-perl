
package Paws::OpenSearch::AssociatePackagesResponse;
  use Moose;
  has DomainPackageDetailsList => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::DomainPackageDetails]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::AssociatePackagesResponse

=head1 ATTRIBUTES


=head2 DomainPackageDetailsList => ArrayRef[L<Paws::OpenSearch::DomainPackageDetails>]

List of information about packages that are associated with a domain.


=head2 _request_id => Str


=cut

