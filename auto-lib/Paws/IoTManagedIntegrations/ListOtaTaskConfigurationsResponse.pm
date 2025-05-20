
package Paws::IoTManagedIntegrations::ListOtaTaskConfigurationsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::IoTManagedIntegrations::OtaTaskConfigurationSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::ListOtaTaskConfigurationsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::IoTManagedIntegrations::OtaTaskConfigurationSummary>]

The list of the over-the-air (OTA) task configurations.


=head2 NextToken => Str

A token that can be used to retrieve the next set of results.


=head2 _request_id => Str


=cut

