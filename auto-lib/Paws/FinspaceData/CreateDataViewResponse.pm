
package Paws::FinspaceData::CreateDataViewResponse;
  use Moose;
  has DatasetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetId');
  has DataViewId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataViewId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::CreateDataViewResponse

=head1 ATTRIBUTES


=head2 DatasetId => Str

The unique identifier of the Dataset used for the Dataview.


=head2 DataViewId => Str

The unique identifier for the created Dataview.


=head2 _request_id => Str


=cut

