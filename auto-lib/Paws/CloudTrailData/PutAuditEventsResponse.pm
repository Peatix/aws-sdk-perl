
package Paws::CloudTrailData::PutAuditEventsResponse;
  use Moose;
  has Failed => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrailData::ResultErrorEntry]', traits => ['NameInRequest'], request_name => 'failed', required => 1);
  has Successful => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrailData::AuditEventResultEntry]', traits => ['NameInRequest'], request_name => 'successful', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrailData::PutAuditEventsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Failed => ArrayRef[L<Paws::CloudTrailData::ResultErrorEntry>]

Lists events in the provided event payload that could not be ingested
into CloudTrail, and includes the error code and error message returned
for events that could not be ingested.


=head2 B<REQUIRED> Successful => ArrayRef[L<Paws::CloudTrailData::AuditEventResultEntry>]

Lists events in the provided event payload that were successfully
ingested into CloudTrail.


=head2 _request_id => Str


=cut

