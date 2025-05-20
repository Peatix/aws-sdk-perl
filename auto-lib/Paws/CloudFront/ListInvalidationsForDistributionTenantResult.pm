
package Paws::CloudFront::ListInvalidationsForDistributionTenantResult;
  use Moose;
  has InvalidationList => (is => 'ro', isa => 'Paws::CloudFront::InvalidationList', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListInvalidationsForDistributionTenantResult

=head1 ATTRIBUTES


=head2 InvalidationList => L<Paws::CloudFront::InvalidationList>






=cut

