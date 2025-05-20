
package Paws::PcaConnectorAd::ListConnectorsResponse;
  use Moose;
  has Connectors => (is => 'ro', isa => 'ArrayRef[Paws::PcaConnectorAd::ConnectorSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorAd::ListConnectorsResponse

=head1 ATTRIBUTES


=head2 Connectors => ArrayRef[L<Paws::PcaConnectorAd::ConnectorSummary>]

Summary information about each connector you have created.


=head2 NextToken => Str

Use this parameter when paginating results in a subsequent request
after you receive a response with truncated results. Set it to the
value of the NextToken parameter from the response you just received.


=head2 _request_id => Str


=cut

