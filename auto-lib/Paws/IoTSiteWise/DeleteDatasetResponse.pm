
package Paws::IoTSiteWise::DeleteDatasetResponse;
  use Moose;
  has DatasetStatus => (is => 'ro', isa => 'Paws::IoTSiteWise::DatasetStatus', traits => ['NameInRequest'], request_name => 'datasetStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DeleteDatasetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetStatus => L<Paws::IoTSiteWise::DatasetStatus>

The status of the dataset. This contains the state and any error
messages. State is C<DELETING> after a successfull call to this API,
and any associated error message.


=head2 _request_id => Str


=cut

