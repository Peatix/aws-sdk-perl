
package Paws::EC2::ModifyPrivateDnsNameOptions;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has EnableResourceNameDnsAAAARecord => (is => 'ro', isa => 'Bool');
  has EnableResourceNameDnsARecord => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has PrivateDnsHostnameType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyPrivateDnsNameOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyPrivateDnsNameOptionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyPrivateDnsNameOptions - Arguments for method ModifyPrivateDnsNameOptions on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyPrivateDnsNameOptions on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyPrivateDnsNameOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyPrivateDnsNameOptions.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyPrivateDnsNameOptionsResult = $ec2->ModifyPrivateDnsNameOptions(
      InstanceId                      => 'MyInstanceId',
      DryRun                          => 1,                # OPTIONAL
      EnableResourceNameDnsAAAARecord => 1,                # OPTIONAL
      EnableResourceNameDnsARecord    => 1,                # OPTIONAL
      PrivateDnsHostnameType          => 'ip-name',        # OPTIONAL
    );

    # Results:
    my $Return = $ModifyPrivateDnsNameOptionsResult->Return;

    # Returns a L<Paws::EC2::ModifyPrivateDnsNameOptionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyPrivateDnsNameOptions>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 EnableResourceNameDnsAAAARecord => Bool

Indicates whether to respond to DNS queries for instance hostnames with
DNS AAAA records.



=head2 EnableResourceNameDnsARecord => Bool

Indicates whether to respond to DNS queries for instance hostnames with
DNS A records.



=head2 B<REQUIRED> InstanceId => Str

The ID of the instance.



=head2 PrivateDnsHostnameType => Str

The type of hostname for EC2 instances. For IPv4 only subnets, an
instance DNS name must be based on the instance IPv4 address. For IPv6
only subnets, an instance DNS name must be based on the instance ID.
For dual-stack subnets, you can specify whether DNS names use the
instance IPv4 address or the instance ID.

Valid values are: C<"ip-name">, C<"resource-name">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyPrivateDnsNameOptions in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

