
package Paws::LakeFormation::StartQueryPlanningResponse;
  use Moose;
  has QueryId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::StartQueryPlanningResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueryId => Str

The ID of the plan query operation can be used to fetch the actual work
unit descriptors that are produced as the result of the operation. The
ID is also used to get the query state and as an input to the
C<Execute> operation.


=head2 _request_id => Str


=cut

