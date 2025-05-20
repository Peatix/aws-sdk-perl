
package Paws::ELBv2::ModifyIpPools;
  use Moose;
  has IpamPools => (is => 'ro', isa => 'Paws::ELBv2::IpamPools');
  has LoadBalancerArn => (is => 'ro', isa => 'Str', required => 1);
  has RemoveIpamPools => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyIpPools');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::ModifyIpPoolsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyIpPoolsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::ModifyIpPools - Arguments for method ModifyIpPools on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyIpPools on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method ModifyIpPools.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyIpPools.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    my $ModifyIpPoolsOutput = $elasticloadbalancing->ModifyIpPools(
      LoadBalancerArn => 'MyLoadBalancerArn',
      IpamPools       => {
        Ipv4IpamPoolId => 'MyIpamPoolId',    # max: 1000; OPTIONAL
      },    # OPTIONAL
      RemoveIpamPools => [
        'ipv4', ...    # values: ipv4
      ],    # OPTIONAL
    );

    # Results:
    my $IpamPools = $ModifyIpPoolsOutput->IpamPools;

    # Returns a L<Paws::ELBv2::ModifyIpPoolsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/ModifyIpPools>

=head1 ATTRIBUTES


=head2 IpamPools => L<Paws::ELBv2::IpamPools>

The IPAM pools to be modified.



=head2 B<REQUIRED> LoadBalancerArn => Str

The Amazon Resource Name (ARN) of the load balancer.



=head2 RemoveIpamPools => ArrayRef[Str|Undef]

Remove the IP pools in use by the load balancer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyIpPools in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

