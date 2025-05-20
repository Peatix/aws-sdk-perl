
package Paws::CloudWatchLogs::ListLogGroupsResponse;
  use Moose;
  has LogGroups => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::LogGroupSummary]', traits => ['NameInRequest'], request_name => 'logGroups' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::ListLogGroupsResponse

=head1 ATTRIBUTES


=head2 LogGroups => ArrayRef[L<Paws::CloudWatchLogs::LogGroupSummary>]

An array of structures, where each structure contains the information
about one log group.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;