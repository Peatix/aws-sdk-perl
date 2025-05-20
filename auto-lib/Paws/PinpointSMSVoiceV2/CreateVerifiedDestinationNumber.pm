
package Paws::PinpointSMSVoiceV2::CreateVerifiedDestinationNumber;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DestinationPhoneNumber => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVerifiedDestinationNumber');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::CreateVerifiedDestinationNumberResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::CreateVerifiedDestinationNumber - Arguments for method CreateVerifiedDestinationNumber on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVerifiedDestinationNumber on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method CreateVerifiedDestinationNumber.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVerifiedDestinationNumber.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $CreateVerifiedDestinationNumberResult =
      $sms -voice->CreateVerifiedDestinationNumber(
      DestinationPhoneNumber => 'MyPhoneNumber',
      ClientToken            => 'MyClientToken',    # OPTIONAL
      Tags                   => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $CreatedTimestamp =
      $CreateVerifiedDestinationNumberResult->CreatedTimestamp;
    my $DestinationPhoneNumber =
      $CreateVerifiedDestinationNumberResult->DestinationPhoneNumber;
    my $Status = $CreateVerifiedDestinationNumberResult->Status;
    my $Tags   = $CreateVerifiedDestinationNumberResult->Tags;
    my $VerifiedDestinationNumberArn =
      $CreateVerifiedDestinationNumberResult->VerifiedDestinationNumberArn;
    my $VerifiedDestinationNumberId =
      $CreateVerifiedDestinationNumberResult->VerifiedDestinationNumberId;

# Returns a L<Paws::PinpointSMSVoiceV2::CreateVerifiedDestinationNumberResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/CreateVerifiedDestinationNumber>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you don't specify a client token, a
randomly generated token is used for the request to ensure idempotency.



=head2 B<REQUIRED> DestinationPhoneNumber => Str

The verified destination phone number, in E.164 format.



=head2 Tags => ArrayRef[L<Paws::PinpointSMSVoiceV2::Tag>]

An array of tags (key and value pairs) to associate with the
destination number.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVerifiedDestinationNumber in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

