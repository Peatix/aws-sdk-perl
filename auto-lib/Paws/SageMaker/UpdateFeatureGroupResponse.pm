
package Paws::SageMaker::UpdateFeatureGroupResponse;
  use Moose;
  has FeatureGroupArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateFeatureGroupResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FeatureGroupArn => Str

The Amazon Resource Number (ARN) of the feature group that you're
updating.


=head2 _request_id => Str


=cut

1;