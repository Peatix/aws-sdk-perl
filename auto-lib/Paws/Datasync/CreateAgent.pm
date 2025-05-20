
package Paws::Datasync::CreateAgent;
  use Moose;
  has ActivationKey => (is => 'ro', isa => 'Str', required => 1);
  has AgentName => (is => 'ro', isa => 'Str');
  has SecurityGroupArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SubnetArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TagListEntry]');
  has VpcEndpointId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAgent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::CreateAgentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateAgent - Arguments for method CreateAgent on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAgent on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method CreateAgent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAgent.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $CreateAgentResponse = $datasync->CreateAgent(
      ActivationKey     => 'MyActivationKey',
      AgentName         => 'MyTagValue',        # OPTIONAL
      SecurityGroupArns => [
        'MyEc2SecurityGroupArn', ...            # max: 128
      ],    # OPTIONAL
      SubnetArns => [
        'MyEc2SubnetArn', ...    # max: 128
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 256
          Value => 'MyTagValue',    # max: 256
        },
        ...
      ],    # OPTIONAL
      VpcEndpointId => 'MyVpcEndpointId',    # OPTIONAL
    );

    # Results:
    my $AgentArn = $CreateAgentResponse->AgentArn;

    # Returns a L<Paws::Datasync::CreateAgentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/CreateAgent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActivationKey => Str

Specifies your DataSync agent's activation key. If you don't have an
activation key, see Activating your agent
(https://docs.aws.amazon.com/datasync/latest/userguide/activate-agent.html).



=head2 AgentName => Str

Specifies a name for your agent. We recommend specifying a name that
you can remember.



=head2 SecurityGroupArns => ArrayRef[Str|Undef]

Specifies the Amazon Resource Name (ARN) of the security group that
allows traffic between your agent and VPC service endpoint. You can
only specify one ARN.



=head2 SubnetArns => ArrayRef[Str|Undef]

Specifies the ARN of the subnet where your VPC service endpoint is
located. You can only specify one ARN.



=head2 Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]

Specifies labels that help you categorize, filter, and search for your
Amazon Web Services resources. We recommend creating at least one tag
for your agent.



=head2 VpcEndpointId => Str

Specifies the ID of the VPC service endpoint
(https://docs.aws.amazon.com/datasync/latest/userguide/choose-service-endpoint.html#datasync-in-vpc)
that you're using. For example, a VPC endpoint ID looks like
C<vpce-01234d5aff67890e1>.

The VPC service endpoint you use must include the DataSync service name
(for example, C<com.amazonaws.us-east-2.datasync>).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAgent in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

