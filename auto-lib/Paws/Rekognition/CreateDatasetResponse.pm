
package Paws::Rekognition::CreateDatasetResponse;
  use Moose;
  has DatasetArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::CreateDatasetResponse

=head1 ATTRIBUTES


=head2 DatasetArn => Str

The ARN of the created Amazon Rekognition Custom Labels dataset.


=head2 _request_id => Str


=cut

1;