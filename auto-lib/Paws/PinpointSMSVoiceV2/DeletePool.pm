
package Paws::PinpointSMSVoiceV2::DeletePool;
  use Moose;
  has PoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::DeletePoolResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DeletePool - Arguments for method DeletePool on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePool on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method DeletePool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePool.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $DeletePoolResult = $sms -voice->DeletePool(
      PoolId => 'MyPoolIdOrArn',

    );

    # Results:
    my $CreatedTimestamp = $DeletePoolResult->CreatedTimestamp;
    my $MessageType      = $DeletePoolResult->MessageType;
    my $OptOutListName   = $DeletePoolResult->OptOutListName;
    my $PoolArn          = $DeletePoolResult->PoolArn;
    my $PoolId           = $DeletePoolResult->PoolId;
    my $SelfManagedOptOutsEnabled =
      $DeletePoolResult->SelfManagedOptOutsEnabled;
    my $SharedRoutesEnabled = $DeletePoolResult->SharedRoutesEnabled;
    my $Status              = $DeletePoolResult->Status;
    my $TwoWayChannelArn    = $DeletePoolResult->TwoWayChannelArn;
    my $TwoWayChannelRole   = $DeletePoolResult->TwoWayChannelRole;
    my $TwoWayEnabled       = $DeletePoolResult->TwoWayEnabled;

    # Returns a L<Paws::PinpointSMSVoiceV2::DeletePoolResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/DeletePool>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PoolId => Str

The PoolId or PoolArn of the pool to delete. You can use DescribePools
to find the values for PoolId and PoolArn .

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePool in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

