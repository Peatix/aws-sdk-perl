
package Paws::SSMQuickSetup::CreateConfigurationManager;
  use Moose;
  has ConfigurationDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::SSMQuickSetup::ConfigurationDefinitionInput]', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::SSMQuickSetup::TagsMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfigurationManager');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configurationManager');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMQuickSetup::CreateConfigurationManagerOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMQuickSetup::CreateConfigurationManager - Arguments for method CreateConfigurationManager on L<Paws::SSMQuickSetup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConfigurationManager on the
L<AWS Systems Manager QuickSetup|Paws::SSMQuickSetup> service. Use the attributes of this class
as arguments to method CreateConfigurationManager.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConfigurationManager.

=head1 SYNOPSIS

    my $ssm-quicksetup = Paws->service('SSMQuickSetup');
    my $CreateConfigurationManagerOutput =
      $ssm -quicksetup->CreateConfigurationManager(
      ConfigurationDefinitions => [
        {
          Parameters => {
            'MyConfigurationParametersMapKeyString' =>
              'MyConfigurationParametersMapValueString'
            ,    # key: min: 1, max: 256, value: max: 40960
          },
          Type => 'MyConfigurationDefinitionInputTypeString',
          LocalDeploymentAdministrationRoleArn => 'MyIAMRoleArn',    # OPTIONAL
          LocalDeploymentExecutionRoleName     =>
'MyConfigurationDefinitionInputLocalDeploymentExecutionRoleNameString'
          ,                                                          # OPTIONAL
          TypeVersion => 'MyConfigurationDefinitionInputTypeVersionString'
          ,    # min: 1, max: 128; OPTIONAL
        },
        ...
      ],
      Description =>
        'MyCreateConfigurationManagerInputDescriptionString',    # OPTIONAL
      Name => 'MyCreateConfigurationManagerInputNameString',     # OPTIONAL
      Tags => {
        'MyTagsMapKeyString' =>
          'MyTagsMapValueString',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $ManagerArn = $CreateConfigurationManagerOutput->ManagerArn;

    # Returns a L<Paws::SSMQuickSetup::CreateConfigurationManagerOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup/CreateConfigurationManager>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationDefinitions => ArrayRef[L<Paws::SSMQuickSetup::ConfigurationDefinitionInput>]

The definition of the Quick Setup configuration that the configuration
manager deploys.



=head2 Description => Str

A description of the configuration manager.



=head2 Name => Str

A name for the configuration manager.



=head2 Tags => L<Paws::SSMQuickSetup::TagsMap>

Key-value pairs of metadata to assign to the configuration manager.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConfigurationManager in L<Paws::SSMQuickSetup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

