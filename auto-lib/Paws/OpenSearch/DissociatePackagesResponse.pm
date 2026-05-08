
package Paws::OpenSearch::DissociatePackagesResponse;
  use Moose;
  has DomainPackageDetailsList => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::DomainPackageDetails]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DissociatePackagesResponse

=head1 ATTRIBUTES


=head2 DomainPackageDetailsList => ArrayRef[L<Paws::OpenSearch::DomainPackageDetails>]

A list of package details for the packages that were dissociated from
the domain.


=head2 _request_id => Str


=cut

