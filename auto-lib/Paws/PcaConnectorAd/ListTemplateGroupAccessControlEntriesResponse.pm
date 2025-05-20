
package Paws::PcaConnectorAd::ListTemplateGroupAccessControlEntriesResponse;
  use Moose;
  has AccessControlEntries => (is => 'ro', isa => 'ArrayRef[Paws::PcaConnectorAd::AccessControlEntrySummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorAd::ListTemplateGroupAccessControlEntriesResponse

=head1 ATTRIBUTES


=head2 AccessControlEntries => ArrayRef[L<Paws::PcaConnectorAd::AccessControlEntrySummary>]

An access control entry grants or denies permission to an Active
Directory group to enroll certificates for a template.


=head2 NextToken => Str

Use this parameter when paginating results in a subsequent request
after you receive a response with truncated results. Set it to the
value of the C<NextToken> parameter from the response you just
received.


=head2 _request_id => Str


=cut

