
package Paws::GlobalAccelerator::CreateCustomRoutingAccelerator;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool');
  has IdempotencyToken => (is => 'ro', isa => 'Str', required => 1);
  has IpAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has IpAddressType => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCustomRoutingAccelerator');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlobalAccelerator::CreateCustomRoutingAcceleratorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::CreateCustomRoutingAccelerator - Arguments for method CreateCustomRoutingAccelerator on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCustomRoutingAccelerator on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method CreateCustomRoutingAccelerator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCustomRoutingAccelerator.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    my $CreateCustomRoutingAcceleratorResponse =
      $globalaccelerator->CreateCustomRoutingAccelerator(
      IdempotencyToken => 'MyIdempotencyToken',
      Name             => 'MyGenericString',
      Enabled          => 1,                      # OPTIONAL
      IpAddressType    => 'IPV4',                 # OPTIONAL
      IpAddresses      => [
        'MyIpAddress', ...                        # max: 45
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $Accelerator = $CreateCustomRoutingAcceleratorResponse->Accelerator;

# Returns a L<Paws::GlobalAccelerator::CreateCustomRoutingAcceleratorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/CreateCustomRoutingAccelerator>

=head1 ATTRIBUTES


=head2 Enabled => Bool

Indicates whether an accelerator is enabled. The value is true or
false. The default value is true.

If the value is set to true, an accelerator cannot be deleted. If set
to false, the accelerator can be deleted.



=head2 B<REQUIRED> IdempotencyToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotencyE<mdash>that is, the uniquenessE<mdash>of the request.



=head2 IpAddresses => ArrayRef[Str|Undef]

Optionally, if you've added your own IP address pool to Global
Accelerator (BYOIP), you can choose an IPv4 address from your own pool
to use for the accelerator's static IPv4 address when you create an
accelerator.

After you bring an address range to Amazon Web Services, it appears in
your account as an address pool. When you create an accelerator, you
can assign one IPv4 address from your range to it. Global Accelerator
assigns you a second static IPv4 address from an Amazon IP address
range. If you bring two IPv4 address ranges to Amazon Web Services, you
can assign one IPv4 address from each range to your accelerator. This
restriction is because Global Accelerator assigns each address range to
a different network zone, for high availability.

You can specify one or two addresses, separated by a space. Do not
include the /32 suffix.

Note that you can't update IP addresses for an existing accelerator. To
change them, you must create a new accelerator with the new addresses.

For more information, see Bring your own IP addresses (BYOIP)
(https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
in the I<Global Accelerator Developer Guide>.



=head2 IpAddressType => Str

The IP address type that an accelerator supports. For a custom routing
accelerator, the value must be IPV4.

Valid values are: C<"IPV4">, C<"DUAL_STACK">

=head2 B<REQUIRED> Name => Str

The name of a custom routing accelerator. The name can have a maximum
of 64 characters, must contain only alphanumeric characters or hyphens
(-), and must not begin or end with a hyphen.



=head2 Tags => ArrayRef[L<Paws::GlobalAccelerator::Tag>]

Create tags for an accelerator.

For more information, see Tagging in Global Accelerator
(https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html)
in the I<Global Accelerator Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCustomRoutingAccelerator in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

