
package Paws::SSMQuickSetup::UpdateConfigurationManager;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has ManagerArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ManagerArn', required => 1);
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConfigurationManager');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configurationManager/{ManagerArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMQuickSetup::UpdateConfigurationManager - Arguments for method UpdateConfigurationManager on L<Paws::SSMQuickSetup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConfigurationManager on the
L<AWS Systems Manager QuickSetup|Paws::SSMQuickSetup> service. Use the attributes of this class
as arguments to method UpdateConfigurationManager.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConfigurationManager.

=head1 SYNOPSIS

    my $ssm-quicksetup = Paws->service('SSMQuickSetup');
    $ssm -quicksetup->UpdateConfigurationManager(
      ManagerArn  => 'MyUpdateConfigurationManagerInputManagerArnString',
      Description =>
        'MyUpdateConfigurationManagerInputDescriptionString',    # OPTIONAL
      Name => 'MyUpdateConfigurationManagerInputNameString',     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup/UpdateConfigurationManager>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the configuration manager.



=head2 B<REQUIRED> ManagerArn => Str

The ARN of the configuration manager.



=head2 Name => Str

A name for the configuration manager.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConfigurationManager in L<Paws::SSMQuickSetup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

