
package Paws::SageMaker::ListModelMetadataResponse;
  use Moose;
  has ModelMetadataSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ModelMetadataSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListModelMetadataResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelMetadataSummaries => ArrayRef[L<Paws::SageMaker::ModelMetadataSummary>]

A structure that holds model metadata.


=head2 NextToken => Str

A token for getting the next set of recommendations, if there are any.


=head2 _request_id => Str


=cut

1;