
package Paws::PinpointSMSVoiceV2::DeleteEventDestination;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str', required => 1);
  has EventDestinationName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEventDestination');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::DeleteEventDestinationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DeleteEventDestination - Arguments for method DeleteEventDestination on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteEventDestination on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method DeleteEventDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteEventDestination.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $DeleteEventDestinationResult = $sms -voice->DeleteEventDestination(
      ConfigurationSetName => 'MyConfigurationSetNameOrArn',
      EventDestinationName => 'MyEventDestinationName',

    );

    # Results:
    my $ConfigurationSetArn =
      $DeleteEventDestinationResult->ConfigurationSetArn;
    my $ConfigurationSetName =
      $DeleteEventDestinationResult->ConfigurationSetName;
    my $EventDestination = $DeleteEventDestinationResult->EventDestination;

   # Returns a L<Paws::PinpointSMSVoiceV2::DeleteEventDestinationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/DeleteEventDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set or the configuration set's Amazon
Resource Name (ARN) to remove the event destination from. The
ConfigurateSetName and ConfigurationSetArn can be found using the
DescribeConfigurationSets action.



=head2 B<REQUIRED> EventDestinationName => Str

The name of the event destination to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteEventDestination in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

