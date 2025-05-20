
package Paws::CloudFront::UpdateDistributionWithStagingConfigResult;
  use Moose;
  has Distribution => (is => 'ro', isa => 'Paws::CloudFront::Distribution', traits => ['ParamInBody']);
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateDistributionWithStagingConfigResult

=head1 ATTRIBUTES


=head2 Distribution => L<Paws::CloudFront::Distribution>





=head2 ETag => Str

The current version of the primary distribution (after it's updated).




=cut

