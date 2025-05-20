
package Paws::Connect::UpdateAgentStatus;
  use Moose;
  has AgentStatusId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AgentStatusId', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has DisplayOrder => (is => 'ro', isa => 'Int');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has ResetOrderNumber => (is => 'ro', isa => 'Bool');
  has State => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAgentStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/agent-status/{InstanceId}/{AgentStatusId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateAgentStatus - Arguments for method UpdateAgentStatus on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAgentStatus on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdateAgentStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAgentStatus.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    $connect->UpdateAgentStatus(
      AgentStatusId    => 'MyAgentStatusId',
      InstanceId       => 'MyInstanceId',
      Description      => 'MyUpdateAgentStatusDescription',    # OPTIONAL
      DisplayOrder     => 1,                                   # OPTIONAL
      Name             => 'MyAgentStatusName',                 # OPTIONAL
      ResetOrderNumber => 1,                                   # OPTIONAL
      State            => 'ENABLED',                           # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdateAgentStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentStatusId => Str

The identifier of the agent status.



=head2 Description => Str

The description of the agent status.



=head2 DisplayOrder => Int

The display order of the agent status.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 Name => Str

The name of the agent status.



=head2 ResetOrderNumber => Bool

A number indicating the reset order of the agent status.



=head2 State => Str

The state of the agent status.

Valid values are: C<"ENABLED">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAgentStatus in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

