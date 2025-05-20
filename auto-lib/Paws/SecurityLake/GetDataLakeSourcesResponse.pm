
package Paws::SecurityLake::GetDataLakeSourcesResponse;
  use Moose;
  has DataLakeArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataLakeArn');
  has DataLakeSources => (is => 'ro', isa => 'ArrayRef[Paws::SecurityLake::DataLakeSource]', traits => ['NameInRequest'], request_name => 'dataLakeSources');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::GetDataLakeSourcesResponse

=head1 ATTRIBUTES


=head2 DataLakeArn => Str

The Amazon Resource Name (ARN) created by you to provide to the
subscriber. For more information about ARNs and how to use them in
policies, see the Amazon Security Lake User Guide
(https://docs.aws.amazon.com/security-lake/latest/userguide/subscriber-management.html).


=head2 DataLakeSources => ArrayRef[L<Paws::SecurityLake::DataLakeSource>]

The list of enabled accounts and enabled sources.


=head2 NextToken => Str

Lists if there are more results available. The value of nextToken is a
unique pagination token for each page. Repeat the call using the
returned token to retrieve the next page. Keep all other arguments
unchanged.

Each pagination token expires after 24 hours. Using an expired
pagination token will return an HTTP 400 InvalidToken error.


=head2 _request_id => Str


=cut

