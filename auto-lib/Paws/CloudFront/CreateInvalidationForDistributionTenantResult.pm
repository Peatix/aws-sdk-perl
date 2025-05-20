
package Paws::CloudFront::CreateInvalidationForDistributionTenantResult;
  use Moose;
  has Invalidation => (is => 'ro', isa => 'Paws::CloudFront::Invalidation', traits => ['ParamInBody']);
  has Location => (is => 'ro', isa => 'Str', header_name => 'Location', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateInvalidationForDistributionTenantResult

=head1 ATTRIBUTES


=head2 Invalidation => L<Paws::CloudFront::Invalidation>





=head2 Location => Str

The location for the invalidation.




=cut

