
package Paws::Evidently::ListLaunchesResponse;
  use Moose;
  has Launches => (is => 'ro', isa => 'ArrayRef[Paws::Evidently::Launch]', traits => ['NameInRequest'], request_name => 'launches');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::ListLaunchesResponse

=head1 ATTRIBUTES


=head2 Launches => ArrayRef[L<Paws::Evidently::Launch>]

An array of structures that contain the configuration details of the
launches in the specified project.


=head2 NextToken => Str

The token to use in a subsequent C<ListLaunches> operation to return
the next set of results.


=head2 _request_id => Str


=cut

