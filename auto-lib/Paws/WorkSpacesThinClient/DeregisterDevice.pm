
package Paws::WorkSpacesThinClient::DeregisterDevice;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has TargetDeviceStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetDeviceStatus');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterDevice');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/deregister-device/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpacesThinClient::DeregisterDeviceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesThinClient::DeregisterDevice - Arguments for method DeregisterDevice on L<Paws::WorkSpacesThinClient>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeregisterDevice on the
L<Amazon WorkSpaces Thin Client|Paws::WorkSpacesThinClient> service. Use the attributes of this class
as arguments to method DeregisterDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeregisterDevice.

=head1 SYNOPSIS

    my $thinclient = Paws->service('WorkSpacesThinClient');
    my $DeregisterDeviceResponse = $thinclient->DeregisterDevice(
      Id                 => 'MyDeviceId',
      ClientToken        => 'MyClientToken',    # OPTIONAL
      TargetDeviceStatus => 'DEREGISTERED',     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/thinclient/DeregisterDevice>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Specifies a unique, case-sensitive identifier that you provide to
ensure the idempotency of the request. This lets you safely retry the
request without accidentally performing the same operation a second
time. Passing the same value to a later call to an operation requires
that you also pass the same value for all other parameters. We
recommend that you use a UUID type of value
(https://wikipedia.org/wiki/Universally_unique_identifier).

If you don't provide this value, then Amazon Web Services generates a
random one for you.

If you retry the operation with the same C<ClientToken>, but with
different parameters, the retry fails with an
C<IdempotentParameterMismatch> error.



=head2 B<REQUIRED> Id => Str

The ID of the device to deregister.



=head2 TargetDeviceStatus => Str

The desired new status for the device.

Valid values are: C<"DEREGISTERED">, C<"ARCHIVED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeregisterDevice in L<Paws::WorkSpacesThinClient>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

