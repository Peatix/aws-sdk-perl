
package Paws::PinpointSMSVoiceV2::DisassociateOriginationIdentity;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has IsoCountryCode => (is => 'ro', isa => 'Str', required => 1);
  has OriginationIdentity => (is => 'ro', isa => 'Str', required => 1);
  has PoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateOriginationIdentity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::DisassociateOriginationIdentityResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DisassociateOriginationIdentity - Arguments for method DisassociateOriginationIdentity on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateOriginationIdentity on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method DisassociateOriginationIdentity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateOriginationIdentity.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $DisassociateOriginationIdentityResult =
      $sms -voice->DisassociateOriginationIdentity(
      IsoCountryCode      => 'MyIsoCountryCode',
      OriginationIdentity => 'MyPhoneOrSenderIdOrArn',
      PoolId              => 'MyPoolIdOrArn',
      ClientToken         => 'MyClientToken',            # OPTIONAL
      );

    # Results:
    my $IsoCountryCode = $DisassociateOriginationIdentityResult->IsoCountryCode;
    my $OriginationIdentity =
      $DisassociateOriginationIdentityResult->OriginationIdentity;
    my $OriginationIdentityArn =
      $DisassociateOriginationIdentityResult->OriginationIdentityArn;
    my $PoolArn = $DisassociateOriginationIdentityResult->PoolArn;
    my $PoolId  = $DisassociateOriginationIdentityResult->PoolId;

# Returns a L<Paws::PinpointSMSVoiceV2::DisassociateOriginationIdentityResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/DisassociateOriginationIdentity>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request. If you don't specify a client token, a randomly
generated token is used for the request to ensure idempotency.



=head2 B<REQUIRED> IsoCountryCode => Str

The two-character code, in ISO 3166-1 alpha-2 format, for the country
or region.



=head2 B<REQUIRED> OriginationIdentity => Str

The origination identity to use such as a PhoneNumberId,
PhoneNumberArn, SenderId or SenderIdArn. You can use
DescribePhoneNumbers find the values for PhoneNumberId and
PhoneNumberArn, or use DescribeSenderIds to get the values for SenderId
and SenderIdArn.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).



=head2 B<REQUIRED> PoolId => Str

The unique identifier for the pool to disassociate with the origination
identity. This value can be either the PoolId or PoolArn.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateOriginationIdentity in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

