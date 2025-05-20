
package Paws::IoTSiteWise::DescribeDatasetResponse;
  use Moose;
  has DatasetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetArn', required => 1);
  has DatasetCreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetCreationDate', required => 1);
  has DatasetDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetDescription', required => 1);
  has DatasetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetId', required => 1);
  has DatasetLastUpdateDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetLastUpdateDate', required => 1);
  has DatasetName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetName', required => 1);
  has DatasetSource => (is => 'ro', isa => 'Paws::IoTSiteWise::DatasetSource', traits => ['NameInRequest'], request_name => 'datasetSource', required => 1);
  has DatasetStatus => (is => 'ro', isa => 'Paws::IoTSiteWise::DatasetStatus', traits => ['NameInRequest'], request_name => 'datasetStatus', required => 1);
  has DatasetVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetVersion');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeDatasetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetArn => Str

The ARN
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
of the dataset. The format is
C<arn:${Partition}:iotsitewise:${Region}:${Account}:dataset/${DatasetId}>.


=head2 B<REQUIRED> DatasetCreationDate => Str

The dataset creation date, in Unix epoch time.


=head2 B<REQUIRED> DatasetDescription => Str

A description about the dataset, and its functionality.


=head2 B<REQUIRED> DatasetId => Str

The ID of the dataset.


=head2 B<REQUIRED> DatasetLastUpdateDate => Str

The date the dataset was last updated, in Unix epoch time.


=head2 B<REQUIRED> DatasetName => Str

The name of the dataset.


=head2 B<REQUIRED> DatasetSource => L<Paws::IoTSiteWise::DatasetSource>

The data source for the dataset.


=head2 B<REQUIRED> DatasetStatus => L<Paws::IoTSiteWise::DatasetStatus>

The status of the dataset. This contains the state and any error
messages. State is C<CREATING> after a successfull call to this API,
and any associated error message. The state is C<ACTIVE> when ready to
use.


=head2 DatasetVersion => Str

The version of the dataset.


=head2 _request_id => Str


=cut

