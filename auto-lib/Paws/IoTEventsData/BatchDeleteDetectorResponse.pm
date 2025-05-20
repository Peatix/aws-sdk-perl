
package Paws::IoTEventsData::BatchDeleteDetectorResponse;
  use Moose;
  has BatchDeleteDetectorErrorEntries => (is => 'ro', isa => 'ArrayRef[Paws::IoTEventsData::BatchDeleteDetectorErrorEntry]', traits => ['NameInRequest'], request_name => 'batchDeleteDetectorErrorEntries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::BatchDeleteDetectorResponse

=head1 ATTRIBUTES


=head2 BatchDeleteDetectorErrorEntries => ArrayRef[L<Paws::IoTEventsData::BatchDeleteDetectorErrorEntry>]

A list of errors associated with the request, or an empty array (C<[]>)
if there are no errors. Each error entry contains a C<messageId> that
helps you identify the entry that failed.


=head2 _request_id => Str


=cut

