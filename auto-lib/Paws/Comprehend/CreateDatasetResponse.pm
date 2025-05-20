
package Paws::Comprehend::CreateDatasetResponse;
  use Moose;
  has DatasetArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::CreateDatasetResponse

=head1 ATTRIBUTES


=head2 DatasetArn => Str

The ARN of the dataset.


=head2 _request_id => Str


=cut

1;