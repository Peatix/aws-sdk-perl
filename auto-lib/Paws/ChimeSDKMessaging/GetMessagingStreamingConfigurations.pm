
package Paws::ChimeSDKMessaging::GetMessagingStreamingConfigurations;
  use Moose;
  has AppInstanceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appInstanceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMessagingStreamingConfigurations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app-instances/{appInstanceArn}/streaming-configurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMessaging::GetMessagingStreamingConfigurationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::GetMessagingStreamingConfigurations - Arguments for method GetMessagingStreamingConfigurations on L<Paws::ChimeSDKMessaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMessagingStreamingConfigurations on the
L<Amazon Chime SDK Messaging|Paws::ChimeSDKMessaging> service. Use the attributes of this class
as arguments to method GetMessagingStreamingConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMessagingStreamingConfigurations.

=head1 SYNOPSIS

    my $messaging-chime = Paws->service('ChimeSDKMessaging');
    my $GetMessagingStreamingConfigurationsResponse =
      $messaging -chime->GetMessagingStreamingConfigurations(
      AppInstanceArn => 'MyChimeArn',

      );

    # Results:
    my $StreamingConfigurations =
      $GetMessagingStreamingConfigurationsResponse->StreamingConfigurations;

# Returns a L<Paws::ChimeSDKMessaging::GetMessagingStreamingConfigurationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/messaging-chime/GetMessagingStreamingConfigurations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppInstanceArn => Str

The ARN of the streaming configurations.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMessagingStreamingConfigurations in L<Paws::ChimeSDKMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

