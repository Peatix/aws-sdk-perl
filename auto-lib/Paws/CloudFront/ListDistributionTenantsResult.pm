
package Paws::CloudFront::ListDistributionTenantsResult;
  use Moose;
  has DistributionTenantList => (is => 'ro', isa => 'ArrayRef[Paws::CloudFront::DistributionTenantSummary]', request_name => 'DistributionTenantSummary', traits => ['NameInRequest']);
  has NextMarker => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListDistributionTenantsResult

=head1 ATTRIBUTES


=head2 DistributionTenantList => ArrayRef[L<Paws::CloudFront::DistributionTenantSummary>]

The list of distribution tenants that you retrieved.



=head2 NextMarker => Str

A token used for pagination of results returned in the response. You
can use the token from the previous request to define where the current
request should begin.




=cut

