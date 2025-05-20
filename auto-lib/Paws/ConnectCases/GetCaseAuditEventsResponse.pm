
package Paws::ConnectCases::GetCaseAuditEventsResponse;
  use Moose;
  has AuditEvents => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCases::AuditEvent]', traits => ['NameInRequest'], request_name => 'auditEvents', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::GetCaseAuditEventsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuditEvents => ArrayRef[L<Paws::ConnectCases::AuditEvent>]

A list of case audits where each represents a particular edit of the
case.


=head2 NextToken => Str

The token for the next set of results. This is null if there are no
more results to return.


=head2 _request_id => Str


=cut

