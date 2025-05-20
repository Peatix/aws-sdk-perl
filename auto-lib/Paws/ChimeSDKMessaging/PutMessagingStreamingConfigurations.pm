
package Paws::ChimeSDKMessaging::PutMessagingStreamingConfigurations;
  use Moose;
  has AppInstanceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appInstanceArn', required => 1);
  has StreamingConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMessaging::StreamingConfiguration]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutMessagingStreamingConfigurations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app-instances/{appInstanceArn}/streaming-configurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMessaging::PutMessagingStreamingConfigurationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::PutMessagingStreamingConfigurations - Arguments for method PutMessagingStreamingConfigurations on L<Paws::ChimeSDKMessaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutMessagingStreamingConfigurations on the
L<Amazon Chime SDK Messaging|Paws::ChimeSDKMessaging> service. Use the attributes of this class
as arguments to method PutMessagingStreamingConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutMessagingStreamingConfigurations.

=head1 SYNOPSIS

    my $messaging-chime = Paws->service('ChimeSDKMessaging');
    my $PutMessagingStreamingConfigurationsResponse =
      $messaging -chime->PutMessagingStreamingConfigurations(
      AppInstanceArn          => 'MyChimeArn',
      StreamingConfigurations => [
        {
          DataType    => 'Channel',       # values: Channel, ChannelMessage
          ResourceArn => 'MyChimeArn',    # min: 5, max: 1600

        },
        ...
      ],

      );

    # Results:
    my $StreamingConfigurations =
      $PutMessagingStreamingConfigurationsResponse->StreamingConfigurations;

# Returns a L<Paws::ChimeSDKMessaging::PutMessagingStreamingConfigurationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/messaging-chime/PutMessagingStreamingConfigurations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppInstanceArn => Str

The ARN of the streaming configuration.



=head2 B<REQUIRED> StreamingConfigurations => ArrayRef[L<Paws::ChimeSDKMessaging::StreamingConfiguration>]

The streaming configurations.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutMessagingStreamingConfigurations in L<Paws::ChimeSDKMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

