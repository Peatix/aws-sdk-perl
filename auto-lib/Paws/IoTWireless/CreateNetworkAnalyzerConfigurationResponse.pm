
package Paws::IoTWireless::CreateNetworkAnalyzerConfigurationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::CreateNetworkAnalyzerConfigurationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name of the new resource.


=head2 Name => Str




=head2 _request_id => Str


=cut

