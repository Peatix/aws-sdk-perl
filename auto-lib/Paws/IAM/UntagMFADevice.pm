
package Paws::IAM::UntagMFADevice;
  use Moose;
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagMFADevice');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UntagMFADevice - Arguments for method UntagMFADevice on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagMFADevice on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method UntagMFADevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagMFADevice.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    $iam->UntagMFADevice(
      SerialNumber => 'MyserialNumberType',
      TagKeys      => [
        'MytagKeyType', ...    # min: 1, max: 128
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/UntagMFADevice>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SerialNumber => Str

The unique identifier for the IAM virtual MFA device from which you
want to remove tags. For virtual MFA devices, the serial number is the
same as the ARN.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

A list of key names as a simple array of strings. The tags with
matching keys are removed from the specified instance profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagMFADevice in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

