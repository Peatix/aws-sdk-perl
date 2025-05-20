
package Paws::SecurityLake::ListLogSourcesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::SecurityLake::LogSource]', traits => ['NameInRequest'], request_name => 'sources');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::ListLogSourcesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If nextToken is returned, there are more results available. You can
repeat the call using the returned token to retrieve the next page.


=head2 Sources => ArrayRef[L<Paws::SecurityLake::LogSource>]

The list of log sources in your organization that send data to the data
lake.


=head2 _request_id => Str


=cut

