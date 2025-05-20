
package Paws::PinpointSMSVoiceV2::RequestSenderId;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DeletionProtectionEnabled => (is => 'ro', isa => 'Bool');
  has IsoCountryCode => (is => 'ro', isa => 'Str', required => 1);
  has MessageTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SenderId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RequestSenderId');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::RequestSenderIdResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::RequestSenderId - Arguments for method RequestSenderId on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RequestSenderId on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method RequestSenderId.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RequestSenderId.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $RequestSenderIdResult = $sms -voice->RequestSenderId(
      IsoCountryCode            => 'MyIsoCountryCode',
      SenderId                  => 'MySenderId',
      ClientToken               => 'MyClientToken',      # OPTIONAL
      DeletionProtectionEnabled => 1,                    # OPTIONAL
      MessageTypes              => [
        'TRANSACTIONAL', ...    # values: TRANSACTIONAL, PROMOTIONAL
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $DeletionProtectionEnabled =
      $RequestSenderIdResult->DeletionProtectionEnabled;
    my $IsoCountryCode      = $RequestSenderIdResult->IsoCountryCode;
    my $MessageTypes        = $RequestSenderIdResult->MessageTypes;
    my $MonthlyLeasingPrice = $RequestSenderIdResult->MonthlyLeasingPrice;
    my $Registered          = $RequestSenderIdResult->Registered;
    my $SenderId            = $RequestSenderIdResult->SenderId;
    my $SenderIdArn         = $RequestSenderIdResult->SenderIdArn;
    my $Tags                = $RequestSenderIdResult->Tags;

    # Returns a L<Paws::PinpointSMSVoiceV2::RequestSenderIdResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/RequestSenderId>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you don't specify a client token, a
randomly generated token is used for the request to ensure idempotency.



=head2 DeletionProtectionEnabled => Bool

By default this is set to false. When set to true the sender ID can't
be deleted.



=head2 B<REQUIRED> IsoCountryCode => Str

The two-character code, in ISO 3166-1 alpha-2 format, for the country
or region.



=head2 MessageTypes => ArrayRef[Str|Undef]

The type of message. Valid values are TRANSACTIONAL for messages that
are critical or time-sensitive and PROMOTIONAL for messages that aren't
critical or time-sensitive.



=head2 B<REQUIRED> SenderId => Str

The sender ID string to request.



=head2 Tags => ArrayRef[L<Paws::PinpointSMSVoiceV2::Tag>]

An array of tags (key and value pairs) to associate with the sender ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RequestSenderId in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

