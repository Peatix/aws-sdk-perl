
package Paws::LicenseManager::CreateLicenseConversionTaskForResource;
  use Moose;
  has DestinationLicenseContext => (is => 'ro', isa => 'Paws::LicenseManager::LicenseConversionContext', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceLicenseContext => (is => 'ro', isa => 'Paws::LicenseManager::LicenseConversionContext', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLicenseConversionTaskForResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManager::CreateLicenseConversionTaskForResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::CreateLicenseConversionTaskForResource - Arguments for method CreateLicenseConversionTaskForResource on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLicenseConversionTaskForResource on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method CreateLicenseConversionTaskForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLicenseConversionTaskForResource.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $CreateLicenseConversionTaskForResourceResponse =
      $license -manager->CreateLicenseConversionTaskForResource(
      DestinationLicenseContext => {
        UsageOperation => 'MyUsageOperation',    # max: 50; OPTIONAL
      },
      ResourceArn          => 'MyArn',
      SourceLicenseContext => {
        UsageOperation => 'MyUsageOperation',    # max: 50; OPTIONAL
      },

      );

    # Results:
    my $LicenseConversionTaskId =
      $CreateLicenseConversionTaskForResourceResponse->LicenseConversionTaskId;

# Returns a L<Paws::LicenseManager::CreateLicenseConversionTaskForResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/CreateLicenseConversionTaskForResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationLicenseContext => L<Paws::LicenseManager::LicenseConversionContext>

Information that identifies the license type you are converting to. For
the structure of the destination license, see Convert a license type
using the CLI
(https://docs.aws.amazon.com/license-manager/latest/userguide/conversion-procedures.html#conversion-cli)
in the I<License Manager User Guide>.



=head2 B<REQUIRED> ResourceArn => Str

Amazon Resource Name (ARN) of the resource you are converting the
license type for.



=head2 B<REQUIRED> SourceLicenseContext => L<Paws::LicenseManager::LicenseConversionContext>

Information that identifies the license type you are converting from.
For the structure of the source license, see Convert a license type
using the CLI
(https://docs.aws.amazon.com/license-manager/latest/userguide/conversion-procedures.html#conversion-cli)
in the I<License Manager User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLicenseConversionTaskForResource in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

