
package Paws::CloudFront::CopyDistributionResult;
  use Moose;
  has Distribution => (is => 'ro', isa => 'Paws::CloudFront::Distribution', traits => ['ParamInBody']);
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has Location => (is => 'ro', isa => 'Str', header_name => 'Location', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CopyDistributionResult

=head1 ATTRIBUTES


=head2 Distribution => L<Paws::CloudFront::Distribution>





=head2 ETag => Str

The version identifier for the current version of the staging
distribution.



=head2 Location => Str

The URL of the staging distribution.




=cut

