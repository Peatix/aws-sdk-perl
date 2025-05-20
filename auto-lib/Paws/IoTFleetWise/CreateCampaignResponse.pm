
package Paws::IoTFleetWise::CreateCampaignResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::CreateCampaignResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the created campaign.


=head2 Name => Str

The name of the created campaign.


=head2 _request_id => Str


=cut

1;