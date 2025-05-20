
package Paws::EC2::ProvisionIpamPoolCidr;
  use Moose;
  has Cidr => (is => 'ro', isa => 'Str');
  has CidrAuthorizationContext => (is => 'ro', isa => 'Paws::EC2::IpamCidrAuthorizationContext');
  has ClientToken => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has IpamExternalResourceVerificationTokenId => (is => 'ro', isa => 'Str');
  has IpamPoolId => (is => 'ro', isa => 'Str', required => 1);
  has NetmaskLength => (is => 'ro', isa => 'Int');
  has VerificationMethod => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ProvisionIpamPoolCidr');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ProvisionIpamPoolCidrResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ProvisionIpamPoolCidr - Arguments for method ProvisionIpamPoolCidr on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ProvisionIpamPoolCidr on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ProvisionIpamPoolCidr.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ProvisionIpamPoolCidr.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ProvisionIpamPoolCidrResult = $ec2->ProvisionIpamPoolCidr(
      IpamPoolId               => 'MyIpamPoolId',
      Cidr                     => 'MyString',       # OPTIONAL
      CidrAuthorizationContext => {
        Message   => 'MyString',
        Signature => 'MyString',
      },                                            # OPTIONAL
      ClientToken                             => 'MyString',    # OPTIONAL
      DryRun                                  => 1,             # OPTIONAL
      IpamExternalResourceVerificationTokenId =>
        'MyIpamExternalResourceVerificationTokenId',            # OPTIONAL
      NetmaskLength      => 1,                                  # OPTIONAL
      VerificationMethod => 'remarks-x509',                     # OPTIONAL
    );

    # Results:
    my $IpamPoolCidr = $ProvisionIpamPoolCidrResult->IpamPoolCidr;

    # Returns a L<Paws::EC2::ProvisionIpamPoolCidrResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ProvisionIpamPoolCidr>

=head1 ATTRIBUTES


=head2 Cidr => Str

The CIDR you want to assign to the IPAM pool. Either "NetmaskLength" or
"Cidr" is required. This value will be null if you specify
"NetmaskLength" and will be filled in during the provisioning process.



=head2 CidrAuthorizationContext => L<Paws::EC2::IpamCidrAuthorizationContext>

A signed document that proves that you are authorized to bring a
specified IP address range to Amazon using BYOIP. This option only
applies to IPv4 and IPv6 pools in the public scope.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see Ensuring
idempotency
(https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html).



=head2 DryRun => Bool

A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 IpamExternalResourceVerificationTokenId => Str

Verification token ID. This option only applies to IPv4 and IPv6 pools
in the public scope.



=head2 B<REQUIRED> IpamPoolId => Str

The ID of the IPAM pool to which you want to assign a CIDR.



=head2 NetmaskLength => Int

The netmask length of the CIDR you'd like to provision to a pool. Can
be used for provisioning Amazon-provided IPv6 CIDRs to top-level pools
and for provisioning CIDRs to pools with source pools. Cannot be used
to provision BYOIP CIDRs to top-level pools. Either "NetmaskLength" or
"Cidr" is required.



=head2 VerificationMethod => Str

The method for verifying control of a public IP address range. Defaults
to C<remarks-x509> if not specified. This option only applies to IPv4
and IPv6 pools in the public scope.

Valid values are: C<"remarks-x509">, C<"dns-token">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ProvisionIpamPoolCidr in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

