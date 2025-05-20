
package Paws::IoTWireless::ListNetworkAnalyzerConfigurationsResponse;
  use Moose;
  has NetworkAnalyzerConfigurationList => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::NetworkAnalyzerConfigurations]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::ListNetworkAnalyzerConfigurationsResponse

=head1 ATTRIBUTES


=head2 NetworkAnalyzerConfigurationList => ArrayRef[L<Paws::IoTWireless::NetworkAnalyzerConfigurations>]

The list of network analyzer configurations.


=head2 NextToken => Str

The token to use to get the next set of results, or B<null> if there
are no additional results.


=head2 _request_id => Str


=cut

