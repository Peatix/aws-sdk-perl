
package Paws::FinspaceData::UpdateChangesetResponse;
  use Moose;
  has ChangesetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'changesetId');
  has DatasetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::UpdateChangesetResponse

=head1 ATTRIBUTES


=head2 ChangesetId => Str

The unique identifier for the Changeset to update.


=head2 DatasetId => Str

The unique identifier for the FinSpace Dataset in which the Changeset
is created.


=head2 _request_id => Str


=cut

