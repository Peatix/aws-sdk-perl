
package Paws::SecurityLake::ListDataLakeExceptionsResponse;
  use Moose;
  has Exceptions => (is => 'ro', isa => 'ArrayRef[Paws::SecurityLake::DataLakeException]', traits => ['NameInRequest'], request_name => 'exceptions');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::ListDataLakeExceptionsResponse

=head1 ATTRIBUTES


=head2 Exceptions => ArrayRef[L<Paws::SecurityLake::DataLakeException>]

Lists the failures that cannot be retried.


=head2 NextToken => Str

Lists if there are more results available. The value of nextToken is a
unique pagination token for each page. Repeat the call using the
returned token to retrieve the next page. Keep all other arguments
unchanged.

Each pagination token expires after 24 hours. Using an expired
pagination token will return an HTTP 400 InvalidToken error.


=head2 _request_id => Str


=cut

