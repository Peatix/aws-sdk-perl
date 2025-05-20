
package Paws::NetworkFirewall::DescribeFlowOperation;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has FirewallArn => (is => 'ro', isa => 'Str', required => 1);
  has FlowOperationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFlowOperation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFirewall::DescribeFlowOperationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::DescribeFlowOperation - Arguments for method DescribeFlowOperation on L<Paws::NetworkFirewall>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFlowOperation on the
L<AWS Network Firewall|Paws::NetworkFirewall> service. Use the attributes of this class
as arguments to method DescribeFlowOperation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFlowOperation.

=head1 SYNOPSIS

    my $network-firewall = Paws->service('NetworkFirewall');
    my $DescribeFlowOperationResponse =
      $network -firewall->DescribeFlowOperation(
      FirewallArn      => 'MyResourceArn',
      FlowOperationId  => 'MyFlowOperationId',
      AvailabilityZone => 'MyAvailabilityZone',    # OPTIONAL
      );

    # Results:
    my $AvailabilityZone = $DescribeFlowOperationResponse->AvailabilityZone;
    my $FirewallArn      = $DescribeFlowOperationResponse->FirewallArn;
    my $FlowOperation    = $DescribeFlowOperationResponse->FlowOperation;
    my $FlowOperationId  = $DescribeFlowOperationResponse->FlowOperationId;
    my $FlowOperationStatus =
      $DescribeFlowOperationResponse->FlowOperationStatus;
    my $FlowOperationType = $DescribeFlowOperationResponse->FlowOperationType;
    my $FlowRequestTimestamp =
      $DescribeFlowOperationResponse->FlowRequestTimestamp;
    my $StatusMessage = $DescribeFlowOperationResponse->StatusMessage;

    # Returns a L<Paws::NetworkFirewall::DescribeFlowOperationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/network-firewall/DescribeFlowOperation>

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The ID of the Availability Zone where the firewall is located. For
example, C<us-east-2a>.

Defines the scope a flow operation. You can use up to 20 filters to
configure a single flow operation.



=head2 B<REQUIRED> FirewallArn => Str

The Amazon Resource Name (ARN) of the firewall.



=head2 B<REQUIRED> FlowOperationId => Str

A unique identifier for the flow operation. This ID is returned in the
responses to start and list commands. You provide to describe commands.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFlowOperation in L<Paws::NetworkFirewall>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

