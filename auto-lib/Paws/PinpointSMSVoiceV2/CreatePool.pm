
package Paws::PinpointSMSVoiceV2::CreatePool;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DeletionProtectionEnabled => (is => 'ro', isa => 'Bool');
  has IsoCountryCode => (is => 'ro', isa => 'Str', required => 1);
  has MessageType => (is => 'ro', isa => 'Str', required => 1);
  has OriginationIdentity => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::CreatePoolResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::CreatePool - Arguments for method CreatePool on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePool on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method CreatePool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePool.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $CreatePoolResult = $sms -voice->CreatePool(
      IsoCountryCode            => 'MyIsoCountryCode',
      MessageType               => 'TRANSACTIONAL',
      OriginationIdentity       => 'MyPhoneOrSenderIdOrArn',
      ClientToken               => 'MyClientToken',            # OPTIONAL
      DeletionProtectionEnabled => 1,                          # OPTIONAL
      Tags                      => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $CreatedTimestamp = $CreatePoolResult->CreatedTimestamp;
    my $DeletionProtectionEnabled =
      $CreatePoolResult->DeletionProtectionEnabled;
    my $MessageType    = $CreatePoolResult->MessageType;
    my $OptOutListName = $CreatePoolResult->OptOutListName;
    my $PoolArn        = $CreatePoolResult->PoolArn;
    my $PoolId         = $CreatePoolResult->PoolId;
    my $SelfManagedOptOutsEnabled =
      $CreatePoolResult->SelfManagedOptOutsEnabled;
    my $SharedRoutesEnabled = $CreatePoolResult->SharedRoutesEnabled;
    my $Status              = $CreatePoolResult->Status;
    my $Tags                = $CreatePoolResult->Tags;
    my $TwoWayChannelArn    = $CreatePoolResult->TwoWayChannelArn;
    my $TwoWayChannelRole   = $CreatePoolResult->TwoWayChannelRole;
    my $TwoWayEnabled       = $CreatePoolResult->TwoWayEnabled;

    # Returns a L<Paws::PinpointSMSVoiceV2::CreatePoolResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/CreatePool>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you don't specify a client token, a
randomly generated token is used for the request to ensure idempotency.



=head2 DeletionProtectionEnabled => Bool

By default this is set to false. When set to true the pool can't be
deleted. You can change this value using the UpdatePool action.



=head2 B<REQUIRED> IsoCountryCode => Str

The new two-character code, in ISO 3166-1 alpha-2 format, for the
country or region of the new pool.



=head2 B<REQUIRED> MessageType => Str

The type of message. Valid values are TRANSACTIONAL for messages that
are critical or time-sensitive and PROMOTIONAL for messages that aren't
critical or time-sensitive. After the pool is created the MessageType
can't be changed.

Valid values are: C<"TRANSACTIONAL">, C<"PROMOTIONAL">

=head2 B<REQUIRED> OriginationIdentity => Str

The origination identity to use such as a PhoneNumberId,
PhoneNumberArn, SenderId or SenderIdArn. You can use
DescribePhoneNumbers to find the values for PhoneNumberId and
PhoneNumberArn while DescribeSenderIds can be used to get the values
for SenderId and SenderIdArn.

After the pool is created you can add more origination identities to
the pool by using AssociateOriginationIdentity
(https://docs.aws.amazon.com/pinpoint/latest/apireference_smsvoicev2/API_AssociateOriginationIdentity.html).

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).



=head2 Tags => ArrayRef[L<Paws::PinpointSMSVoiceV2::Tag>]

An array of tags (key and value pairs) associated with the pool.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePool in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

