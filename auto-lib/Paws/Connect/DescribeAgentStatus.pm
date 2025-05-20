
package Paws::Connect::DescribeAgentStatus;
  use Moose;
  has AgentStatusId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AgentStatusId', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAgentStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/agent-status/{InstanceId}/{AgentStatusId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::DescribeAgentStatusResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeAgentStatus - Arguments for method DescribeAgentStatus on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAgentStatus on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method DescribeAgentStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAgentStatus.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $DescribeAgentStatusResponse = $connect->DescribeAgentStatus(
      AgentStatusId => 'MyAgentStatusId',
      InstanceId    => 'MyInstanceId',

    );

    # Results:
    my $AgentStatus = $DescribeAgentStatusResponse->AgentStatus;

    # Returns a L<Paws::Connect::DescribeAgentStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/DescribeAgentStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentStatusId => Str

The identifier for the agent status.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAgentStatus in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

