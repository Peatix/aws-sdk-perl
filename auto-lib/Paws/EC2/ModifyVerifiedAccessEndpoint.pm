
package Paws::EC2::ModifyVerifiedAccessEndpoint;
  use Moose;
  has CidrOptions => (is => 'ro', isa => 'Paws::EC2::ModifyVerifiedAccessEndpointCidrOptions');
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has LoadBalancerOptions => (is => 'ro', isa => 'Paws::EC2::ModifyVerifiedAccessEndpointLoadBalancerOptions');
  has NetworkInterfaceOptions => (is => 'ro', isa => 'Paws::EC2::ModifyVerifiedAccessEndpointEniOptions');
  has RdsOptions => (is => 'ro', isa => 'Paws::EC2::ModifyVerifiedAccessEndpointRdsOptions');
  has VerifiedAccessEndpointId => (is => 'ro', isa => 'Str', required => 1);
  has VerifiedAccessGroupId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyVerifiedAccessEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyVerifiedAccessEndpointResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVerifiedAccessEndpoint - Arguments for method ModifyVerifiedAccessEndpoint on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyVerifiedAccessEndpoint on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyVerifiedAccessEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyVerifiedAccessEndpoint.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyVerifiedAccessEndpointResult = $ec2->ModifyVerifiedAccessEndpoint(
      VerifiedAccessEndpointId => 'MyVerifiedAccessEndpointId',
      CidrOptions              => {
        PortRanges => [
          {
            FromPort => 1,    # min: 1, max: 65535; OPTIONAL
            ToPort   => 1,    # min: 1, max: 65535; OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      ClientToken         => 'MyString',    # OPTIONAL
      Description         => 'MyString',    # OPTIONAL
      DryRun              => 1,             # OPTIONAL
      LoadBalancerOptions => {
        Port       => 1,                    # min: 1, max: 65535; OPTIONAL
        PortRanges => [
          {
            FromPort => 1,    # min: 1, max: 65535; OPTIONAL
            ToPort   => 1,    # min: 1, max: 65535; OPTIONAL
          },
          ...
        ],    # OPTIONAL
        Protocol  => 'http',                # values: http, https, tcp; OPTIONAL
        SubnetIds => [ 'MySubnetId', ... ], # OPTIONAL
      },    # OPTIONAL
      NetworkInterfaceOptions => {
        Port       => 1,    # min: 1, max: 65535; OPTIONAL
        PortRanges => [
          {
            FromPort => 1,    # min: 1, max: 65535; OPTIONAL
            ToPort   => 1,    # min: 1, max: 65535; OPTIONAL
          },
          ...
        ],    # OPTIONAL
        Protocol => 'http',    # values: http, https, tcp; OPTIONAL
      },    # OPTIONAL
      RdsOptions => {
        Port        => 1,                        # min: 1, max: 65535; OPTIONAL
        RdsEndpoint => 'MyString',
        SubnetIds   => [ 'MySubnetId', ... ],    # OPTIONAL
      },    # OPTIONAL
      VerifiedAccessGroupId => 'MyVerifiedAccessGroupId',    # OPTIONAL
    );

    # Results:
    my $VerifiedAccessEndpoint =
      $ModifyVerifiedAccessEndpointResult->VerifiedAccessEndpoint;

    # Returns a L<Paws::EC2::ModifyVerifiedAccessEndpointResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyVerifiedAccessEndpoint>

=head1 ATTRIBUTES


=head2 CidrOptions => L<Paws::EC2::ModifyVerifiedAccessEndpointCidrOptions>

The CIDR options.



=head2 ClientToken => Str

A unique, case-sensitive token that you provide to ensure idempotency
of your modification request. For more information, see Ensuring
idempotency
(https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html).



=head2 Description => Str

A description for the Verified Access endpoint.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 LoadBalancerOptions => L<Paws::EC2::ModifyVerifiedAccessEndpointLoadBalancerOptions>

The load balancer details if creating the Verified Access endpoint as
C<load-balancer>type.



=head2 NetworkInterfaceOptions => L<Paws::EC2::ModifyVerifiedAccessEndpointEniOptions>

The network interface options.



=head2 RdsOptions => L<Paws::EC2::ModifyVerifiedAccessEndpointRdsOptions>

The RDS options.



=head2 B<REQUIRED> VerifiedAccessEndpointId => Str

The ID of the Verified Access endpoint.



=head2 VerifiedAccessGroupId => Str

The ID of the Verified Access group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyVerifiedAccessEndpoint in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

