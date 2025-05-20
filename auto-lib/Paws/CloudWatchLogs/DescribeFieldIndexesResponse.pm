
package Paws::CloudWatchLogs::DescribeFieldIndexesResponse;
  use Moose;
  has FieldIndexes => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::FieldIndex]', traits => ['NameInRequest'], request_name => 'fieldIndexes' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeFieldIndexesResponse

=head1 ATTRIBUTES


=head2 FieldIndexes => ArrayRef[L<Paws::CloudWatchLogs::FieldIndex>]

An array containing the field index information.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;