
package Paws::PcaConnectorAd::GetTemplateResponse;
  use Moose;
  has Template => (is => 'ro', isa => 'Paws::PcaConnectorAd::Template');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorAd::GetTemplateResponse

=head1 ATTRIBUTES


=head2 Template => L<Paws::PcaConnectorAd::Template>

A certificate template that the connector uses to issue certificates
from a private CA.


=head2 _request_id => Str


=cut

