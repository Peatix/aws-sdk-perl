
package Paws::PinpointSMSVoiceV2::DescribeProtectConfigurationsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ProtectConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::ProtectConfigurationInformation]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DescribeProtectConfigurationsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to be used for the next set of paginated results. You don't
need to supply a value for this field in the initial request.


=head2 ProtectConfigurations => ArrayRef[L<Paws::PinpointSMSVoiceV2::ProtectConfigurationInformation>]

An array of ProtectConfigurationInformation objects that contain the
details for the request.


=head2 _request_id => Str


=cut

1;