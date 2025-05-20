
package Paws::IoT::ListCommandsResponse;
  use Moose;
  has Commands => (is => 'ro', isa => 'ArrayRef[Paws::IoT::CommandSummary]', traits => ['NameInRequest'], request_name => 'commands');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListCommandsResponse

=head1 ATTRIBUTES


=head2 Commands => ArrayRef[L<Paws::IoT::CommandSummary>]

The list of commands.


=head2 NextToken => Str

The token to use to get the next set of results, or C<null> if there
are no additional results.


=head2 _request_id => Str


=cut

