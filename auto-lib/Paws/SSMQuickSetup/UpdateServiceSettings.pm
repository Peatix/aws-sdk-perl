
package Paws::SSMQuickSetup::UpdateServiceSettings;
  use Moose;
  has ExplorerEnablingRoleArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServiceSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/serviceSettings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMQuickSetup::UpdateServiceSettings - Arguments for method UpdateServiceSettings on L<Paws::SSMQuickSetup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateServiceSettings on the
L<AWS Systems Manager QuickSetup|Paws::SSMQuickSetup> service. Use the attributes of this class
as arguments to method UpdateServiceSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateServiceSettings.

=head1 SYNOPSIS

    my $ssm-quicksetup = Paws->service('SSMQuickSetup');
    $ssm -quicksetup->UpdateServiceSettings(
      ExplorerEnablingRoleArn => 'MyIAMRoleArn',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup/UpdateServiceSettings>

=head1 ATTRIBUTES


=head2 ExplorerEnablingRoleArn => Str

The IAM role used to enable Explorer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateServiceSettings in L<Paws::SSMQuickSetup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

