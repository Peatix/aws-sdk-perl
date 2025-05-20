
package Paws::LicenseManager::DeleteLicenseManagerReportGenerator;
  use Moose;
  has LicenseManagerReportGeneratorArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLicenseManagerReportGenerator');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManager::DeleteLicenseManagerReportGeneratorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::DeleteLicenseManagerReportGenerator - Arguments for method DeleteLicenseManagerReportGenerator on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteLicenseManagerReportGenerator on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method DeleteLicenseManagerReportGenerator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteLicenseManagerReportGenerator.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $DeleteLicenseManagerReportGeneratorResponse =
      $license -manager->DeleteLicenseManagerReportGenerator(
      LicenseManagerReportGeneratorArn => 'MyString',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/DeleteLicenseManagerReportGenerator>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LicenseManagerReportGeneratorArn => Str

Amazon Resource Name (ARN) of the report generator to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteLicenseManagerReportGenerator in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

