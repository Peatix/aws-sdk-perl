
package Paws::PcaConnectorAd::ListTemplatesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Templates => (is => 'ro', isa => 'ArrayRef[Paws::PcaConnectorAd::TemplateSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorAd::ListTemplatesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Use this parameter when paginating results in a subsequent request
after you receive a response with truncated results. Set it to the
value of the C<NextToken> parameter from the response you just
received.


=head2 Templates => ArrayRef[L<Paws::PcaConnectorAd::TemplateSummary>]

Custom configuration templates used when issuing a certificate.


=head2 _request_id => Str


=cut

