
package Paws::Proton::UpdateEnvironment;
  use Moose;
  has CodebuildRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'codebuildRoleArn' );
  has ComponentRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentRoleArn' );
  has DeploymentType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentType' , required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has EnvironmentAccountConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentAccountConnectionId' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has ProtonServiceRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'protonServiceRoleArn' );
  has ProvisioningRepository => (is => 'ro', isa => 'Paws::Proton::RepositoryBranchInput', traits => ['NameInRequest'], request_name => 'provisioningRepository' );
  has Spec => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spec' );
  has TemplateMajorVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateMajorVersion' );
  has TemplateMinorVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateMinorVersion' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEnvironment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::UpdateEnvironmentOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::UpdateEnvironment - Arguments for method UpdateEnvironment on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEnvironment on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method UpdateEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEnvironment.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $UpdateEnvironmentOutput = $proton->UpdateEnvironment(
      DeploymentType                 => 'NONE',
      Name                           => 'MyResourceName',
      CodebuildRoleArn               => 'MyRoleArn',        # OPTIONAL
      ComponentRoleArn               => 'MyRoleArn',        # OPTIONAL
      Description                    => 'MyDescription',    # OPTIONAL
      EnvironmentAccountConnectionId =>
        'MyEnvironmentAccountConnectionId',                 # OPTIONAL
      ProtonServiceRoleArn   => 'MyArn',                    # OPTIONAL
      ProvisioningRepository => {
        Branch   => 'MyGitBranchName',                      # min: 1, max: 200
        Name     => 'MyRepositoryName',                     # min: 1, max: 100
        Provider => 'GITHUB',    # values: GITHUB, GITHUB_ENTERPRISE, BITBUCKET

      },    # OPTIONAL
      Spec                 => 'MySpecContents',           # OPTIONAL
      TemplateMajorVersion => 'MyTemplateVersionPart',    # OPTIONAL
      TemplateMinorVersion => 'MyTemplateVersionPart',    # OPTIONAL
    );

    # Results:
    my $Environment = $UpdateEnvironmentOutput->Environment;

    # Returns a L<Paws::Proton::UpdateEnvironmentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/UpdateEnvironment>

=head1 ATTRIBUTES


=head2 CodebuildRoleArn => Str

The Amazon Resource Name (ARN) of the IAM service role that allows
Proton to provision infrastructure using CodeBuild-based provisioning
on your behalf.



=head2 ComponentRoleArn => Str

The Amazon Resource Name (ARN) of the IAM service role that Proton uses
when provisioning directly defined components in this environment. It
determines the scope of infrastructure that a component can provision.

The environment must have a C<componentRoleArn> to allow directly
defined components to be associated with the environment.

For more information about components, see Proton components
(https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
in the I<Proton User Guide>.



=head2 B<REQUIRED> DeploymentType => Str

There are four modes for updating an environment. The C<deploymentType>
field defines the mode.

=over

=item C<NONE>

In this mode, a deployment I<doesn't> occur. Only the requested
metadata parameters are updated.

=item C<CURRENT_VERSION>

In this mode, the environment is deployed and updated with the new spec
that you provide. Only requested parameters are updated.
I<DonE<rsquo>t> include major or minor version parameters when you use
this C<deployment-type>.

=item C<MINOR_VERSION>

In this mode, the environment is deployed and updated with the
published, recommended (latest) minor version of the current major
version in use, by default. You can also specify a different minor
version of the current major version in use.

=item C<MAJOR_VERSION>

In this mode, the environment is deployed and updated with the
published, recommended (latest) major and minor version of the current
template, by default. You can also specify a different major version
that is higher than the major version in use and a minor version
(optional).

=back


Valid values are: C<"NONE">, C<"CURRENT_VERSION">, C<"MINOR_VERSION">, C<"MAJOR_VERSION">

=head2 Description => Str

A description of the environment update.



=head2 EnvironmentAccountConnectionId => Str

The ID of the environment account connection.

You can only update to a new environment account connection if it was
created in the same environment account that the current environment
account connection was created in and is associated with the current
environment.



=head2 B<REQUIRED> Name => Str

The name of the environment to update.



=head2 ProtonServiceRoleArn => Str

The Amazon Resource Name (ARN) of the Proton service role that allows
Proton to make API calls to other services your behalf.



=head2 ProvisioningRepository => L<Paws::Proton::RepositoryBranchInput>

The linked repository that you use to host your rendered infrastructure
templates for self-managed provisioning. A linked repository is a
repository that has been registered with Proton. For more information,
see CreateRepository.



=head2 Spec => Str

The formatted specification that defines the update.



=head2 TemplateMajorVersion => Str

The major version of the environment to update.



=head2 TemplateMinorVersion => Str

The minor version of the environment to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEnvironment in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

