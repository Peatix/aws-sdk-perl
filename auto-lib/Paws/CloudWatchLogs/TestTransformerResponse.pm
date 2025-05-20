
package Paws::CloudWatchLogs::TestTransformerResponse;
  use Moose;
  has TransformedLogs => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::TransformedLogRecord]', traits => ['NameInRequest'], request_name => 'transformedLogs' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::TestTransformerResponse

=head1 ATTRIBUTES


=head2 TransformedLogs => ArrayRef[L<Paws::CloudWatchLogs::TransformedLogRecord>]

An array where each member of the array includes both the original
version and the transformed version of one of the log events that you
input.


=head2 _request_id => Str


=cut

1;