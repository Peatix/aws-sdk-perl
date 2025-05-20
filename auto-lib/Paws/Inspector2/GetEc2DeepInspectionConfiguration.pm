
package Paws::Inspector2::GetEc2DeepInspectionConfiguration;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEc2DeepInspectionConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ec2deepinspectionconfiguration/get');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::GetEc2DeepInspectionConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::GetEc2DeepInspectionConfiguration - Arguments for method GetEc2DeepInspectionConfiguration on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEc2DeepInspectionConfiguration on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method GetEc2DeepInspectionConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEc2DeepInspectionConfiguration.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $GetEc2DeepInspectionConfigurationResponse =
      $inspector2->GetEc2DeepInspectionConfiguration();

    # Results:
    my $ErrorMessage = $GetEc2DeepInspectionConfigurationResponse->ErrorMessage;
    my $OrgPackagePaths =
      $GetEc2DeepInspectionConfigurationResponse->OrgPackagePaths;
    my $PackagePaths = $GetEc2DeepInspectionConfigurationResponse->PackagePaths;
    my $Status       = $GetEc2DeepInspectionConfigurationResponse->Status;

# Returns a L<Paws::Inspector2::GetEc2DeepInspectionConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/GetEc2DeepInspectionConfiguration>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEc2DeepInspectionConfiguration in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

