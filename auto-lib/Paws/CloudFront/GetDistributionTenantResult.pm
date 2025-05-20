
package Paws::CloudFront::GetDistributionTenantResult;
  use Moose;
  has DistributionTenant => (is => 'ro', isa => 'Paws::CloudFront::DistributionTenant', traits => ['ParamInBody']);
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetDistributionTenantResult

=head1 ATTRIBUTES


=head2 DistributionTenant => L<Paws::CloudFront::DistributionTenant>

The distribution tenant that you retrieved.



=head2 ETag => Str

The current version of the distribution tenant.




=cut

