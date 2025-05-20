
package Paws::GameLift::SuspendGameServerGroup;
  use Moose;
  has GameServerGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SuspendActions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SuspendGameServerGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::SuspendGameServerGroupOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::SuspendGameServerGroup - Arguments for method SuspendGameServerGroup on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SuspendGameServerGroup on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method SuspendGameServerGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SuspendGameServerGroup.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $SuspendGameServerGroupOutput = $gamelift->SuspendGameServerGroup(
      GameServerGroupName => 'MyGameServerGroupNameOrArn',
      SuspendActions      => [
        'REPLACE_INSTANCE_TYPES', ...    # values: REPLACE_INSTANCE_TYPES
      ],

    );

    # Results:
    my $GameServerGroup = $SuspendGameServerGroupOutput->GameServerGroup;

    # Returns a L<Paws::GameLift::SuspendGameServerGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/SuspendGameServerGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GameServerGroupName => Str

A unique identifier for the game server group. Use either the name or
ARN value.



=head2 B<REQUIRED> SuspendActions => ArrayRef[Str|Undef]

The activity to suspend for this game server group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SuspendGameServerGroup in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

