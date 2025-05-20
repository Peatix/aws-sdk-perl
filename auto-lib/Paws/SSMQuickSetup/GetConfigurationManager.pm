
package Paws::SSMQuickSetup::GetConfigurationManager;
  use Moose;
  has ManagerArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ManagerArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConfigurationManager');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configurationManager/{ManagerArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMQuickSetup::GetConfigurationManagerOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMQuickSetup::GetConfigurationManager - Arguments for method GetConfigurationManager on L<Paws::SSMQuickSetup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConfigurationManager on the
L<AWS Systems Manager QuickSetup|Paws::SSMQuickSetup> service. Use the attributes of this class
as arguments to method GetConfigurationManager.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConfigurationManager.

=head1 SYNOPSIS

    my $ssm-quicksetup = Paws->service('SSMQuickSetup');
    my $GetConfigurationManagerOutput =
      $ssm -quicksetup->GetConfigurationManager(
      ManagerArn => 'MyGetConfigurationManagerInputManagerArnString',

      );

    # Results:
    my $ConfigurationDefinitions =
      $GetConfigurationManagerOutput->ConfigurationDefinitions;
    my $CreatedAt       = $GetConfigurationManagerOutput->CreatedAt;
    my $Description     = $GetConfigurationManagerOutput->Description;
    my $LastModifiedAt  = $GetConfigurationManagerOutput->LastModifiedAt;
    my $ManagerArn      = $GetConfigurationManagerOutput->ManagerArn;
    my $Name            = $GetConfigurationManagerOutput->Name;
    my $StatusSummaries = $GetConfigurationManagerOutput->StatusSummaries;
    my $Tags            = $GetConfigurationManagerOutput->Tags;

    # Returns a L<Paws::SSMQuickSetup::GetConfigurationManagerOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup/GetConfigurationManager>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ManagerArn => Str

The ARN of the configuration manager.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConfigurationManager in L<Paws::SSMQuickSetup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

