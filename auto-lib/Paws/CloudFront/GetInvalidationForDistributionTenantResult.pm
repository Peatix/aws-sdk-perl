
package Paws::CloudFront::GetInvalidationForDistributionTenantResult;
  use Moose;
  has Invalidation => (is => 'ro', isa => 'Paws::CloudFront::Invalidation', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetInvalidationForDistributionTenantResult

=head1 ATTRIBUTES


=head2 Invalidation => L<Paws::CloudFront::Invalidation>






=cut

