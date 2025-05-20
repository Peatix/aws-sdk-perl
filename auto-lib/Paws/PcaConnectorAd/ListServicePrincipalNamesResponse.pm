
package Paws::PcaConnectorAd::ListServicePrincipalNamesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ServicePrincipalNames => (is => 'ro', isa => 'ArrayRef[Paws::PcaConnectorAd::ServicePrincipalNameSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorAd::ListServicePrincipalNamesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Use this parameter when paginating results in a subsequent request
after you receive a response with truncated results. Set it to the
value of the C<NextToken> parameter from the response you just
received.


=head2 ServicePrincipalNames => ArrayRef[L<Paws::PcaConnectorAd::ServicePrincipalNameSummary>]

The service principal name, if any, that the connector uses to
authenticate with Active Directory.


=head2 _request_id => Str


=cut

