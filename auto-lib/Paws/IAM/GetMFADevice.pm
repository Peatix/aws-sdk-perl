
package Paws::IAM::GetMFADevice;
  use Moose;
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMFADevice');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::GetMFADeviceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetMFADeviceResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetMFADevice - Arguments for method GetMFADevice on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMFADevice on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method GetMFADevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMFADevice.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    my $GetMFADeviceResponse = $iam->GetMFADevice(
      SerialNumber => 'MyserialNumberType',
      UserName     => 'MyuserNameType',       # OPTIONAL
    );

    # Results:
    my $Certifications = $GetMFADeviceResponse->Certifications;
    my $EnableDate     = $GetMFADeviceResponse->EnableDate;
    my $SerialNumber   = $GetMFADeviceResponse->SerialNumber;
    my $UserName       = $GetMFADeviceResponse->UserName;

    # Returns a L<Paws::IAM::GetMFADeviceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/GetMFADevice>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SerialNumber => Str

Serial number that uniquely identifies the MFA device. For this API, we
only accept FIDO security key ARNs
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html).



=head2 UserName => Str

The friendly name identifying the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMFADevice in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

