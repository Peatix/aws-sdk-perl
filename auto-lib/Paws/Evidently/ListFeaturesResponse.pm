
package Paws::Evidently::ListFeaturesResponse;
  use Moose;
  has Features => (is => 'ro', isa => 'ArrayRef[Paws::Evidently::FeatureSummary]', traits => ['NameInRequest'], request_name => 'features');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::ListFeaturesResponse

=head1 ATTRIBUTES


=head2 Features => ArrayRef[L<Paws::Evidently::FeatureSummary>]

An array of structures that contain the configuration details of the
features in the specified project.


=head2 NextToken => Str

The token to use in a subsequent C<ListFeatures> operation to return
the next set of results.


=head2 _request_id => Str


=cut

