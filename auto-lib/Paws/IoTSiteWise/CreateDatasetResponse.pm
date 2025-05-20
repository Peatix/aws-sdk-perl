
package Paws::IoTSiteWise::CreateDatasetResponse;
  use Moose;
  has DatasetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetArn', required => 1);
  has DatasetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetId', required => 1);
  has DatasetStatus => (is => 'ro', isa => 'Paws::IoTSiteWise::DatasetStatus', traits => ['NameInRequest'], request_name => 'datasetStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::CreateDatasetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetArn => Str

The ARN
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
of the dataset. The format is
C<arn:${Partition}:iotsitewise:${Region}:${Account}:dataset/${DatasetId}>.


=head2 B<REQUIRED> DatasetId => Str

The ID of the dataset.


=head2 B<REQUIRED> DatasetStatus => L<Paws::IoTSiteWise::DatasetStatus>

The status of the dataset. This contains the state and any error
messages. State is C<CREATING> after a successfull call to this API,
and any associated error message. The state is C<ACTIVE> when ready to
use.


=head2 _request_id => Str


=cut

