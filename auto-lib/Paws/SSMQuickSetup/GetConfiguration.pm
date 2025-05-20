
package Paws::SSMQuickSetup::GetConfiguration;
  use Moose;
  has ConfigurationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ConfigurationId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/getConfiguration/{ConfigurationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMQuickSetup::GetConfigurationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMQuickSetup::GetConfiguration - Arguments for method GetConfiguration on L<Paws::SSMQuickSetup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConfiguration on the
L<AWS Systems Manager QuickSetup|Paws::SSMQuickSetup> service. Use the attributes of this class
as arguments to method GetConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConfiguration.

=head1 SYNOPSIS

    my $ssm-quicksetup = Paws->service('SSMQuickSetup');
    my $GetConfigurationOutput = $ssm -quicksetup->GetConfiguration(
      ConfigurationId => 'MyGetConfigurationInputConfigurationIdString',

    );

    # Results:
    my $Account = $GetConfigurationOutput->Account;
    my $ConfigurationDefinitionId =
      $GetConfigurationOutput->ConfigurationDefinitionId;
    my $CreatedAt       = $GetConfigurationOutput->CreatedAt;
    my $Id              = $GetConfigurationOutput->Id;
    my $LastModifiedAt  = $GetConfigurationOutput->LastModifiedAt;
    my $ManagerArn      = $GetConfigurationOutput->ManagerArn;
    my $Parameters      = $GetConfigurationOutput->Parameters;
    my $Region          = $GetConfigurationOutput->Region;
    my $StatusSummaries = $GetConfigurationOutput->StatusSummaries;
    my $Type            = $GetConfigurationOutput->Type;
    my $TypeVersion     = $GetConfigurationOutput->TypeVersion;

    # Returns a L<Paws::SSMQuickSetup::GetConfigurationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup/GetConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationId => Str

A service generated identifier for the configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConfiguration in L<Paws::SSMQuickSetup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

