
package Paws::IoTFleetWise::UpdateCampaignResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::UpdateCampaignResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the campaign.


=head2 Name => Str

The name of the updated campaign.


=head2 Status => Str

The state of a campaign. The status can be one of:

=over

=item *

C<CREATING> - Amazon Web Services IoT FleetWise is processing your
request to create the campaign.

=item *

C<WAITING_FOR_APPROVAL> - After a campaign is created, it enters the
C<WAITING_FOR_APPROVAL> state. To allow Amazon Web Services IoT
FleetWise to deploy the campaign to the target vehicle or fleet, use
the API operation to approve the campaign.

=item *

C<RUNNING> - The campaign is active.

=item *

C<SUSPENDED> - The campaign is suspended. To resume the campaign, use
the API operation.

=back


Valid values are: C<"CREATING">, C<"WAITING_FOR_APPROVAL">, C<"RUNNING">, C<"SUSPENDED">
=head2 _request_id => Str


=cut

1;