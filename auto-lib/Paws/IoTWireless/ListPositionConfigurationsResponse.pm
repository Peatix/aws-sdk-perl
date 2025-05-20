
package Paws::IoTWireless::ListPositionConfigurationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PositionConfigurationList => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::PositionConfigurationItem]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::ListPositionConfigurationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to get the next set of results, or B<null> if there
are no additional results.


=head2 PositionConfigurationList => ArrayRef[L<Paws::IoTWireless::PositionConfigurationItem>]

A list of position configurations.


=head2 _request_id => Str


=cut

