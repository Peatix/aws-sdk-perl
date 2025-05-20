
package Paws::IoTSiteWise::UpdateDatasetResponse;
  use Moose;
  has DatasetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetArn');
  has DatasetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetId');
  has DatasetStatus => (is => 'ro', isa => 'Paws::IoTSiteWise::DatasetStatus', traits => ['NameInRequest'], request_name => 'datasetStatus');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::UpdateDatasetResponse

=head1 ATTRIBUTES


=head2 DatasetArn => Str

The ARN
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
of the dataset. The format is
C<arn:${Partition}:iotsitewise:${Region}:${Account}:dataset/${DatasetId}>.


=head2 DatasetId => Str

The ID of the dataset.


=head2 DatasetStatus => L<Paws::IoTSiteWise::DatasetStatus>

The status of the dataset. This contains the state and any error
messages. State is C<UPDATING> after a successfull call to this API,
and any associated error message. The state is C<ACTIVE> when ready to
use.


=head2 _request_id => Str


=cut

