
package Paws::EC2::ResetInstanceAttribute;
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'attribute' , required => 1);
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResetInstanceAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ResetInstanceAttribute - Arguments for method ResetInstanceAttribute on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResetInstanceAttribute on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ResetInstanceAttribute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResetInstanceAttribute.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
 # To reset the sourceDestCheck attribute
 # This example resets the sourceDestCheck attribute for the specified instance.
    $ec2->ResetInstanceAttribute(
      'Attribute'  => 'sourceDestCheck',
      'InstanceId' => 'i-1234567890abcdef0'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ResetInstanceAttribute>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attribute => Str

The attribute to reset.

You can only reset the following attributes: C<kernel> | C<ramdisk> |
C<sourceDestCheck>.

Valid values are: C<"instanceType">, C<"kernel">, C<"ramdisk">, C<"userData">, C<"disableApiTermination">, C<"instanceInitiatedShutdownBehavior">, C<"rootDeviceName">, C<"blockDeviceMapping">, C<"productCodes">, C<"sourceDestCheck">, C<"groupSet">, C<"ebsOptimized">, C<"sriovNetSupport">, C<"enaSupport">, C<"enclaveOptions">, C<"disableApiStop">

=head2 DryRun => Bool

Checks whether you have the required permissions for the operation,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InstanceId => Str

The ID of the instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResetInstanceAttribute in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

