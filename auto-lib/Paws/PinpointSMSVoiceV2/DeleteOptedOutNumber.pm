
package Paws::PinpointSMSVoiceV2::DeleteOptedOutNumber;
  use Moose;
  has OptedOutNumber => (is => 'ro', isa => 'Str', required => 1);
  has OptOutListName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteOptedOutNumber');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::DeleteOptedOutNumberResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DeleteOptedOutNumber - Arguments for method DeleteOptedOutNumber on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteOptedOutNumber on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method DeleteOptedOutNumber.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteOptedOutNumber.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $DeleteOptedOutNumberResult = $sms -voice->DeleteOptedOutNumber(
      OptOutListName => 'MyOptOutListNameOrArn',
      OptedOutNumber => 'MyPhoneNumber',

    );

    # Results:
    my $EndUserOptedOut   = $DeleteOptedOutNumberResult->EndUserOptedOut;
    my $OptOutListArn     = $DeleteOptedOutNumberResult->OptOutListArn;
    my $OptOutListName    = $DeleteOptedOutNumberResult->OptOutListName;
    my $OptedOutNumber    = $DeleteOptedOutNumberResult->OptedOutNumber;
    my $OptedOutTimestamp = $DeleteOptedOutNumberResult->OptedOutTimestamp;

    # Returns a L<Paws::PinpointSMSVoiceV2::DeleteOptedOutNumberResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/DeleteOptedOutNumber>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OptedOutNumber => Str

The phone number, in E.164 format, to remove from the OptOutList.



=head2 B<REQUIRED> OptOutListName => Str

The OptOutListName or OptOutListArn to remove the phone number from.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteOptedOutNumber in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

