
package Paws::CloudWatchLogs::ListLogGroupsForQueryResponse;
  use Moose;
  has LogGroupIdentifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'logGroupIdentifiers' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::ListLogGroupsForQueryResponse

=head1 ATTRIBUTES


=head2 LogGroupIdentifiers => ArrayRef[Str|Undef]

An array of the names and ARNs of the log groups that were processed in
the query.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;