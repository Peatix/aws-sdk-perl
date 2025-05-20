
package Paws::PinpointSMSVoiceV2::UpdatePool;
  use Moose;
  has DeletionProtectionEnabled => (is => 'ro', isa => 'Bool');
  has OptOutListName => (is => 'ro', isa => 'Str');
  has PoolId => (is => 'ro', isa => 'Str', required => 1);
  has SelfManagedOptOutsEnabled => (is => 'ro', isa => 'Bool');
  has SharedRoutesEnabled => (is => 'ro', isa => 'Bool');
  has TwoWayChannelArn => (is => 'ro', isa => 'Str');
  has TwoWayChannelRole => (is => 'ro', isa => 'Str');
  has TwoWayEnabled => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::UpdatePoolResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::UpdatePool - Arguments for method UpdatePool on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePool on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method UpdatePool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePool.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $UpdatePoolResult = $sms -voice->UpdatePool(
      PoolId                    => 'MyPoolIdOrArn',
      DeletionProtectionEnabled => 1,                          # OPTIONAL
      OptOutListName            => 'MyOptOutListNameOrArn',    # OPTIONAL
      SelfManagedOptOutsEnabled => 1,                          # OPTIONAL
      SharedRoutesEnabled       => 1,                          # OPTIONAL
      TwoWayChannelArn          => 'MyTwoWayChannelArn',       # OPTIONAL
      TwoWayChannelRole         => 'MyIamRoleArn',             # OPTIONAL
      TwoWayEnabled             => 1,                          # OPTIONAL
    );

    # Results:
    my $CreatedTimestamp = $UpdatePoolResult->CreatedTimestamp;
    my $DeletionProtectionEnabled =
      $UpdatePoolResult->DeletionProtectionEnabled;
    my $MessageType    = $UpdatePoolResult->MessageType;
    my $OptOutListName = $UpdatePoolResult->OptOutListName;
    my $PoolArn        = $UpdatePoolResult->PoolArn;
    my $PoolId         = $UpdatePoolResult->PoolId;
    my $SelfManagedOptOutsEnabled =
      $UpdatePoolResult->SelfManagedOptOutsEnabled;
    my $SharedRoutesEnabled = $UpdatePoolResult->SharedRoutesEnabled;
    my $Status              = $UpdatePoolResult->Status;
    my $TwoWayChannelArn    = $UpdatePoolResult->TwoWayChannelArn;
    my $TwoWayChannelRole   = $UpdatePoolResult->TwoWayChannelRole;
    my $TwoWayEnabled       = $UpdatePoolResult->TwoWayEnabled;

    # Returns a L<Paws::PinpointSMSVoiceV2::UpdatePoolResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/UpdatePool>

=head1 ATTRIBUTES


=head2 DeletionProtectionEnabled => Bool

When set to true the pool can't be deleted.



=head2 OptOutListName => Str

The OptOutList to associate with the pool. Valid values are either
OptOutListName or OptOutListArn.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).



=head2 B<REQUIRED> PoolId => Str

The unique identifier of the pool to update. Valid values are either
the PoolId or PoolArn.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).



=head2 SelfManagedOptOutsEnabled => Bool

By default this is set to false. When an end recipient sends a message
that begins with HELP or STOP to one of your dedicated numbers, AWS End
User Messaging SMS and Voice automatically replies with a customizable
message and adds the end recipient to the OptOutList. When set to true
you're responsible for responding to HELP and STOP requests. You're
also responsible for tracking and honoring opt-out requests.



=head2 SharedRoutesEnabled => Bool

Indicates whether shared routes are enabled for the pool.



=head2 TwoWayChannelArn => Str

The Amazon Resource Name (ARN) of the two way channel.



=head2 TwoWayChannelRole => Str

An optional IAM Role Arn for a service to assume, to be able to post
inbound SMS messages.



=head2 TwoWayEnabled => Bool

By default this is set to false. When set to true you can receive
incoming text messages from your end recipients.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePool in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

