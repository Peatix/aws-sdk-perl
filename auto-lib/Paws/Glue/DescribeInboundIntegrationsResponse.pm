
package Paws::Glue::DescribeInboundIntegrationsResponse;
  use Moose;
  has InboundIntegrations => (is => 'ro', isa => 'ArrayRef[Paws::Glue::InboundIntegration]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DescribeInboundIntegrationsResponse

=head1 ATTRIBUTES


=head2 InboundIntegrations => ArrayRef[L<Paws::Glue::InboundIntegration>]

A list of inbound integrations.


=head2 Marker => Str

A value that indicates the starting point for the next set of response
records in a subsequent request.


=head2 _request_id => Str


=cut

1;