
package Paws::Inspector2::DeleteCisScanConfiguration;
  use Moose;
  has ScanConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scanConfigurationArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCisScanConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cis/scan-configuration/delete');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::DeleteCisScanConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::DeleteCisScanConfiguration - Arguments for method DeleteCisScanConfiguration on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCisScanConfiguration on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method DeleteCisScanConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCisScanConfiguration.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $DeleteCisScanConfigurationResponse =
      $inspector2->DeleteCisScanConfiguration(
      ScanConfigurationArn => 'MyCisScanConfigurationArn',

      );

    # Results:
    my $ScanConfigurationArn =
      $DeleteCisScanConfigurationResponse->ScanConfigurationArn;

    # Returns a L<Paws::Inspector2::DeleteCisScanConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/DeleteCisScanConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScanConfigurationArn => Str

The ARN of the CIS scan configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCisScanConfiguration in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

