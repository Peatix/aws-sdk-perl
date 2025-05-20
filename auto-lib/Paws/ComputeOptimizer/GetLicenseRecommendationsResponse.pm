
package Paws::ComputeOptimizer::GetLicenseRecommendationsResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::GetRecommendationError]', traits => ['NameInRequest'], request_name => 'errors' );
  has LicenseRecommendations => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::LicenseRecommendation]', traits => ['NameInRequest'], request_name => 'licenseRecommendations' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetLicenseRecommendationsResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::ComputeOptimizer::GetRecommendationError>]

An array of objects that describe errors of the request.


=head2 LicenseRecommendations => ArrayRef[L<Paws::ComputeOptimizer::LicenseRecommendation>]

An array of objects that describe license recommendations.


=head2 NextToken => Str

The token to use to advance to the next page of license
recommendations.


=head2 _request_id => Str


=cut

1;