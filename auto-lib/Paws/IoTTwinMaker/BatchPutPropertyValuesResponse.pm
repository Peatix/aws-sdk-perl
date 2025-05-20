
package Paws::IoTTwinMaker::BatchPutPropertyValuesResponse;
  use Moose;
  has ErrorEntries => (is => 'ro', isa => 'ArrayRef[Paws::IoTTwinMaker::BatchPutPropertyErrorEntry]', traits => ['NameInRequest'], request_name => 'errorEntries', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::BatchPutPropertyValuesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ErrorEntries => ArrayRef[L<Paws::IoTTwinMaker::BatchPutPropertyErrorEntry>]

Entries that caused errors in the batch put operation.


=head2 _request_id => Str


=cut

