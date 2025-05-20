
package Paws::PinpointSMSVoiceV2::DescribeConfigurationSetsResult;
  use Moose;
  has ConfigurationSets => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::ConfigurationSetInformation]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DescribeConfigurationSetsResult

=head1 ATTRIBUTES


=head2 ConfigurationSets => ArrayRef[L<Paws::PinpointSMSVoiceV2::ConfigurationSetInformation>]

An array of ConfigurationSets objects.


=head2 NextToken => Str

The token to be used for the next set of paginated results. If this
field is empty then there are no more results.


=head2 _request_id => Str


=cut

1;