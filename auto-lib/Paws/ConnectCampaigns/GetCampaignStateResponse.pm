
package Paws::ConnectCampaigns::GetCampaignStateResponse;
  use Moose;
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaigns::GetCampaignStateResponse

=head1 ATTRIBUTES


=head2 State => Str



Valid values are: C<"Initialized">, C<"Running">, C<"Paused">, C<"Stopped">, C<"Failed">
=head2 _request_id => Str


=cut

