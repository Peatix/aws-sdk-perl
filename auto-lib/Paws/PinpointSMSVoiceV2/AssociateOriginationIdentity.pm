
package Paws::PinpointSMSVoiceV2::AssociateOriginationIdentity;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has IsoCountryCode => (is => 'ro', isa => 'Str', required => 1);
  has OriginationIdentity => (is => 'ro', isa => 'Str', required => 1);
  has PoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateOriginationIdentity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::AssociateOriginationIdentityResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::AssociateOriginationIdentity - Arguments for method AssociateOriginationIdentity on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateOriginationIdentity on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method AssociateOriginationIdentity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateOriginationIdentity.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $AssociateOriginationIdentityResult =
      $sms -voice->AssociateOriginationIdentity(
      IsoCountryCode      => 'MyIsoCountryCode',
      OriginationIdentity => 'MyPhoneOrSenderIdOrArn',
      PoolId              => 'MyPoolIdOrArn',
      ClientToken         => 'MyClientToken',            # OPTIONAL
      );

    # Results:
    my $IsoCountryCode = $AssociateOriginationIdentityResult->IsoCountryCode;
    my $OriginationIdentity =
      $AssociateOriginationIdentityResult->OriginationIdentity;
    my $OriginationIdentityArn =
      $AssociateOriginationIdentityResult->OriginationIdentityArn;
    my $PoolArn = $AssociateOriginationIdentityResult->PoolArn;
    my $PoolId  = $AssociateOriginationIdentityResult->PoolId;

# Returns a L<Paws::PinpointSMSVoiceV2::AssociateOriginationIdentityResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/AssociateOriginationIdentity>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you don't specify a client token, a
randomly generated token is used for the request to ensure idempotency.



=head2 B<REQUIRED> IsoCountryCode => Str

The new two-character code, in ISO 3166-1 alpha-2 format, for the
country or region of the origination identity.



=head2 B<REQUIRED> OriginationIdentity => Str

The origination identity to use, such as PhoneNumberId, PhoneNumberArn,
SenderId, or SenderIdArn. You can use DescribePhoneNumbers to find the
values for PhoneNumberId and PhoneNumberArn, while DescribeSenderIds
can be used to get the values for SenderId and SenderIdArn.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).



=head2 B<REQUIRED> PoolId => Str

The pool to update with the new Identity. This value can be either the
PoolId or PoolArn, and you can find these values using DescribePools.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateOriginationIdentity in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

