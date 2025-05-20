
package Paws::Connect::UpdateParticipantRoleConfig;
  use Moose;
  has ChannelConfiguration => (is => 'ro', isa => 'Paws::Connect::UpdateParticipantRoleConfigChannelInfo', required => 1);
  has ContactId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ContactId', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateParticipantRoleConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact/participant-role-config/{InstanceId}/{ContactId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::UpdateParticipantRoleConfigResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateParticipantRoleConfig - Arguments for method UpdateParticipantRoleConfig on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateParticipantRoleConfig on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdateParticipantRoleConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateParticipantRoleConfig.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $UpdateParticipantRoleConfigResponse =
      $connect->UpdateParticipantRoleConfig(
      ChannelConfiguration => {
        Chat => {
          ParticipantTimerConfigList => [
            {
              ParticipantRole => 'CUSTOMER',    # values: CUSTOMER, AGENT
              TimerType       => 'IDLE',  # values: IDLE, DISCONNECT_NONCUSTOMER
              TimerValue      => {
                ParticipantTimerAction => 'Unset',    # values: Unset; OPTIONAL
                ParticipantTimerDurationInMinutes =>
                  1,    # min: 2, max: 480; OPTIONAL
              },

            },
            ...
          ],    # min: 1, max: 6

        },    # OPTIONAL
      },
      ContactId  => 'MyContactId',
      InstanceId => 'MyInstanceId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdateParticipantRoleConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelConfiguration => L<Paws::Connect::UpdateParticipantRoleConfigChannelInfo>

The Amazon Connect channel you want to configure.



=head2 B<REQUIRED> ContactId => Str

The identifier of the contact in this instance of Amazon Connect.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateParticipantRoleConfig in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

