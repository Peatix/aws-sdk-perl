
package Paws::DMS::DeleteFleetAdvisorDatabasesResponse;
  use Moose;
  has DatabaseIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DeleteFleetAdvisorDatabasesResponse

=head1 ATTRIBUTES


=head2 DatabaseIds => ArrayRef[Str|Undef]

The IDs of the databases that the operation deleted.


=head2 _request_id => Str


=cut

1;