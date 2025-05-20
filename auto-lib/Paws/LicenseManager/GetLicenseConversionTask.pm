
package Paws::LicenseManager::GetLicenseConversionTask;
  use Moose;
  has LicenseConversionTaskId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLicenseConversionTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManager::GetLicenseConversionTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::GetLicenseConversionTask - Arguments for method GetLicenseConversionTask on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLicenseConversionTask on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method GetLicenseConversionTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLicenseConversionTask.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $GetLicenseConversionTaskResponse =
      $license -manager->GetLicenseConversionTask(
      LicenseConversionTaskId => 'MyLicenseConversionTaskId',

      );

    # Results:
    my $DestinationLicenseContext =
      $GetLicenseConversionTaskResponse->DestinationLicenseContext;
    my $EndTime = $GetLicenseConversionTaskResponse->EndTime;
    my $LicenseConversionTaskId =
      $GetLicenseConversionTaskResponse->LicenseConversionTaskId;
    my $LicenseConversionTime =
      $GetLicenseConversionTaskResponse->LicenseConversionTime;
    my $ResourceArn = $GetLicenseConversionTaskResponse->ResourceArn;
    my $SourceLicenseContext =
      $GetLicenseConversionTaskResponse->SourceLicenseContext;
    my $StartTime     = $GetLicenseConversionTaskResponse->StartTime;
    my $Status        = $GetLicenseConversionTaskResponse->Status;
    my $StatusMessage = $GetLicenseConversionTaskResponse->StatusMessage;

   # Returns a L<Paws::LicenseManager::GetLicenseConversionTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/GetLicenseConversionTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LicenseConversionTaskId => Str

ID of the license type conversion task to retrieve information on.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLicenseConversionTask in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

