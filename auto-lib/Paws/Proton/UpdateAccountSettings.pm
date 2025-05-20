
package Paws::Proton::UpdateAccountSettings;
  use Moose;
  has DeletePipelineProvisioningRepository => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'deletePipelineProvisioningRepository' );
  has PipelineCodebuildRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineCodebuildRoleArn' );
  has PipelineProvisioningRepository => (is => 'ro', isa => 'Paws::Proton::RepositoryBranchInput', traits => ['NameInRequest'], request_name => 'pipelineProvisioningRepository' );
  has PipelineServiceRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineServiceRoleArn' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccountSettings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::UpdateAccountSettingsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::UpdateAccountSettings - Arguments for method UpdateAccountSettings on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAccountSettings on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method UpdateAccountSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAccountSettings.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $UpdateAccountSettingsOutput = $proton->UpdateAccountSettings(
      DeletePipelineProvisioningRepository => 1,                     # OPTIONAL
      PipelineCodebuildRoleArn       => 'MyRoleArnOrEmptyString',    # OPTIONAL
      PipelineProvisioningRepository => {
        Branch   => 'MyGitBranchName',     # min: 1, max: 200
        Name     => 'MyRepositoryName',    # min: 1, max: 100
        Provider => 'GITHUB',    # values: GITHUB, GITHUB_ENTERPRISE, BITBUCKET

      },    # OPTIONAL
      PipelineServiceRoleArn => 'MyRoleArnOrEmptyString',    # OPTIONAL
    );

    # Results:
    my $AccountSettings = $UpdateAccountSettingsOutput->AccountSettings;

    # Returns a L<Paws::Proton::UpdateAccountSettingsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/UpdateAccountSettings>

=head1 ATTRIBUTES


=head2 DeletePipelineProvisioningRepository => Bool

Set to C<true> to remove a configured pipeline repository from the
account settings. Don't set this field if you are updating the
configured pipeline repository.



=head2 PipelineCodebuildRoleArn => Str

The Amazon Resource Name (ARN) of the service role you want to use for
provisioning pipelines. Proton assumes this role for CodeBuild-based
provisioning.



=head2 PipelineProvisioningRepository => L<Paws::Proton::RepositoryBranchInput>

A linked repository for pipeline provisioning. Specify it if you have
environments configured for self-managed provisioning with services
that include pipelines. A linked repository is a repository that has
been registered with Proton. For more information, see
CreateRepository.

To remove a previously configured repository, set
C<deletePipelineProvisioningRepository> to C<true>, and don't set
C<pipelineProvisioningRepository>.



=head2 PipelineServiceRoleArn => Str

The Amazon Resource Name (ARN) of the service role you want to use for
provisioning pipelines. Assumed by Proton for Amazon Web
Services-managed provisioning, and by customer-owned automation for
self-managed provisioning.

To remove a previously configured ARN, specify an empty string.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAccountSettings in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

