
package Paws::EC2::ModifyIpamResourceCidr;
  use Moose;
  has CurrentIpamScopeId => (is => 'ro', isa => 'Str', required => 1);
  has DestinationIpamScopeId => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has Monitored => (is => 'ro', isa => 'Bool', required => 1);
  has ResourceCidr => (is => 'ro', isa => 'Str', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceRegion => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyIpamResourceCidr');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyIpamResourceCidrResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyIpamResourceCidr - Arguments for method ModifyIpamResourceCidr on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyIpamResourceCidr on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyIpamResourceCidr.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyIpamResourceCidr.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyIpamResourceCidrResult = $ec2->ModifyIpamResourceCidr(
      CurrentIpamScopeId     => 'MyIpamScopeId',
      Monitored              => 1,
      ResourceCidr           => 'MyString',
      ResourceId             => 'MyString',
      ResourceRegion         => 'MyString',
      DestinationIpamScopeId => 'MyIpamScopeId',    # OPTIONAL
      DryRun                 => 1,                  # OPTIONAL
    );

    # Results:
    my $IpamResourceCidr = $ModifyIpamResourceCidrResult->IpamResourceCidr;

    # Returns a L<Paws::EC2::ModifyIpamResourceCidrResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyIpamResourceCidr>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CurrentIpamScopeId => Str

The ID of the current scope that the resource CIDR is in.



=head2 DestinationIpamScopeId => Str

The ID of the scope you want to transfer the resource CIDR to.



=head2 DryRun => Bool

A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> Monitored => Bool

Determines if the resource is monitored by IPAM. If a resource is
monitored, the resource is discovered by IPAM and you can view details
about the resourceE<rsquo>s CIDR.



=head2 B<REQUIRED> ResourceCidr => Str

The CIDR of the resource you want to modify.



=head2 B<REQUIRED> ResourceId => Str

The ID of the resource you want to modify.



=head2 B<REQUIRED> ResourceRegion => Str

The Amazon Web Services Region of the resource you want to modify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyIpamResourceCidr in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

