
package Paws::KinesisVideo::ListEdgeAgentConfigurations;
  use Moose;
  has HubDeviceArn => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEdgeAgentConfigurations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listEdgeAgentConfigurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideo::ListEdgeAgentConfigurationsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::ListEdgeAgentConfigurations - Arguments for method ListEdgeAgentConfigurations on L<Paws::KinesisVideo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEdgeAgentConfigurations on the
L<Amazon Kinesis Video Streams|Paws::KinesisVideo> service. Use the attributes of this class
as arguments to method ListEdgeAgentConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEdgeAgentConfigurations.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideo');
    my $ListEdgeAgentConfigurationsOutput =
      $kinesisvideo->ListEdgeAgentConfigurations(
      HubDeviceArn => 'MyHubDeviceArn',
      MaxResults   => 1,                  # OPTIONAL
      NextToken    => 'MyNextToken',      # OPTIONAL
      );

    # Results:
    my $EdgeConfigs = $ListEdgeAgentConfigurationsOutput->EdgeConfigs;
    my $NextToken   = $ListEdgeAgentConfigurationsOutput->NextToken;

    # Returns a L<Paws::KinesisVideo::ListEdgeAgentConfigurationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/ListEdgeAgentConfigurations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HubDeviceArn => Str

The "Internet of Things (IoT) Thing" Arn of the edge agent.



=head2 MaxResults => Int

The maximum number of edge configurations to return in the response.
The default is 5.



=head2 NextToken => Str

If you specify this parameter, when the result of a
C<ListEdgeAgentConfigurations> operation is truncated, the call returns
the C<NextToken> in the response. To get another batch of edge
configurations, provide this token in your next request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEdgeAgentConfigurations in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

