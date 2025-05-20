
package Paws::FinspaceData::CreateDatasetResponse;
  use Moose;
  has DatasetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::CreateDatasetResponse

=head1 ATTRIBUTES


=head2 DatasetId => Str

The unique identifier for the created Dataset.


=head2 _request_id => Str


=cut

