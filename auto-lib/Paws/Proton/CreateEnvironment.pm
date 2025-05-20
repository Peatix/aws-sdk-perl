
package Paws::Proton::CreateEnvironment;
  use Moose;
  has CodebuildRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'codebuildRoleArn' );
  has ComponentRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentRoleArn' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has EnvironmentAccountConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentAccountConnectionId' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has ProtonServiceRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'protonServiceRoleArn' );
  has ProvisioningRepository => (is => 'ro', isa => 'Paws::Proton::RepositoryBranchInput', traits => ['NameInRequest'], request_name => 'provisioningRepository' );
  has Spec => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spec' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Proton::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TemplateMajorVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateMajorVersion' , required => 1);
  has TemplateMinorVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateMinorVersion' );
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEnvironment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::CreateEnvironmentOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::CreateEnvironment - Arguments for method CreateEnvironment on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEnvironment on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method CreateEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEnvironment.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $CreateEnvironmentOutput = $proton->CreateEnvironment(
      Name                           => 'MyResourceName',
      Spec                           => 'MySpecContents',
      TemplateMajorVersion           => 'MyTemplateVersionPart',
      TemplateName                   => 'MyResourceName',
      CodebuildRoleArn               => 'MyRoleArn',               # OPTIONAL
      ComponentRoleArn               => 'MyRoleArn',               # OPTIONAL
      Description                    => 'MyDescription',           # OPTIONAL
      EnvironmentAccountConnectionId =>
        'MyEnvironmentAccountConnectionId',                        # OPTIONAL
      ProtonServiceRoleArn   => 'MyArn',                           # OPTIONAL
      ProvisioningRepository => {
        Branch   => 'MyGitBranchName',     # min: 1, max: 200
        Name     => 'MyRepositoryName',    # min: 1, max: 100
        Provider => 'GITHUB',    # values: GITHUB, GITHUB_ENTERPRISE, BITBUCKET

      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      TemplateMinorVersion => 'MyTemplateVersionPart',    # OPTIONAL
    );

    # Results:
    my $Environment = $CreateEnvironmentOutput->Environment;

    # Returns a L<Paws::Proton::CreateEnvironmentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/CreateEnvironment>

=head1 ATTRIBUTES


=head2 CodebuildRoleArn => Str

The Amazon Resource Name (ARN) of the IAM service role that allows
Proton to provision infrastructure using CodeBuild-based provisioning
on your behalf.

To use CodeBuild-based provisioning for the environment or for any
service instance running in the environment, specify either the
C<environmentAccountConnectionId> or C<codebuildRoleArn> parameter.



=head2 ComponentRoleArn => Str

The Amazon Resource Name (ARN) of the IAM service role that Proton uses
when provisioning directly defined components in this environment. It
determines the scope of infrastructure that a component can provision.

You must specify C<componentRoleArn> to allow directly defined
components to be associated with this environment.

For more information about components, see Proton components
(https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
in the I<Proton User Guide>.



=head2 Description => Str

A description of the environment that's being created and deployed.



=head2 EnvironmentAccountConnectionId => Str

The ID of the environment account connection that you provide if you're
provisioning your environment infrastructure resources to an
environment account. For more information, see Environment account
connections
(https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html)
in the I<Proton User guide>.

To use Amazon Web Services-managed provisioning for the environment,
specify either the C<environmentAccountConnectionId> or
C<protonServiceRoleArn> parameter and omit the
C<provisioningRepository> parameter.



=head2 B<REQUIRED> Name => Str

The name of the environment.



=head2 ProtonServiceRoleArn => Str

The Amazon Resource Name (ARN) of the Proton service role that allows
Proton to make calls to other services on your behalf.

To use Amazon Web Services-managed provisioning for the environment,
specify either the C<environmentAccountConnectionId> or
C<protonServiceRoleArn> parameter and omit the
C<provisioningRepository> parameter.



=head2 ProvisioningRepository => L<Paws::Proton::RepositoryBranchInput>

The linked repository that you use to host your rendered infrastructure
templates for self-managed provisioning. A linked repository is a
repository that has been registered with Proton. For more information,
see CreateRepository.

To use self-managed provisioning for the environment, specify this
parameter and omit the C<environmentAccountConnectionId> and
C<protonServiceRoleArn> parameters.



=head2 B<REQUIRED> Spec => Str

A YAML formatted string that provides inputs as defined in the
environment template bundle schema file. For more information, see
Environments
(https://docs.aws.amazon.com/proton/latest/userguide/ag-environments.html)
in the I<Proton User Guide>.



=head2 Tags => ArrayRef[L<Paws::Proton::Tag>]

An optional list of metadata items that you can associate with the
Proton environment. A tag is a key-value pair.

For more information, see Proton resources and tagging
(https://docs.aws.amazon.com/proton/latest/userguide/resources.html) in
the I<Proton User Guide>.



=head2 B<REQUIRED> TemplateMajorVersion => Str

The major version of the environment template.



=head2 TemplateMinorVersion => Str

The minor version of the environment template.



=head2 B<REQUIRED> TemplateName => Str

The name of the environment template. For more information, see
Environment Templates
(https://docs.aws.amazon.com/proton/latest/userguide/ag-templates.html)
in the I<Proton User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEnvironment in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

