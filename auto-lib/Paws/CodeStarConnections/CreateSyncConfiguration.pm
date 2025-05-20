
package Paws::CodeStarConnections::CreateSyncConfiguration;
  use Moose;
  has Branch => (is => 'ro', isa => 'Str', required => 1);
  has ConfigFile => (is => 'ro', isa => 'Str', required => 1);
  has PublishDeploymentStatus => (is => 'ro', isa => 'Str');
  has RepositoryLinkId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceName => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has SyncType => (is => 'ro', isa => 'Str', required => 1);
  has TriggerResourceUpdateOn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSyncConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStarConnections::CreateSyncConfigurationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::CreateSyncConfiguration - Arguments for method CreateSyncConfiguration on L<Paws::CodeStarConnections>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSyncConfiguration on the
L<AWS CodeStar connections|Paws::CodeStarConnections> service. Use the attributes of this class
as arguments to method CreateSyncConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSyncConfiguration.

=head1 SYNOPSIS

    my $codestar-connections = Paws->service('CodeStarConnections');
    my $CreateSyncConfigurationOutput =
      $codestar -connections->CreateSyncConfiguration(
      Branch                  => 'MyBranchName',
      ConfigFile              => 'MyDeploymentFilePath',
      RepositoryLinkId        => 'MyRepositoryLinkId',
      ResourceName            => 'MyResourceName',
      RoleArn                 => 'MyIamRoleArn',
      SyncType                => 'CFN_STACK_SYNC',
      PublishDeploymentStatus => 'ENABLED',                # OPTIONAL
      TriggerResourceUpdateOn => 'ANY_CHANGE',             # OPTIONAL
      );

    # Results:
    my $SyncConfiguration = $CreateSyncConfigurationOutput->SyncConfiguration;

 # Returns a L<Paws::CodeStarConnections::CreateSyncConfigurationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar-connections/CreateSyncConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Branch => Str

The branch in the repository from which changes will be synced.



=head2 B<REQUIRED> ConfigFile => Str

The file name of the configuration file that manages syncing between
the connection and the repository. This configuration file is stored in
the repository.



=head2 PublishDeploymentStatus => Str

Whether to enable or disable publishing of deployment status to source
providers.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 B<REQUIRED> RepositoryLinkId => Str

The ID of the repository link created for the connection. A repository
link allows Git sync to monitor and sync changes to files in a
specified Git repository.



=head2 B<REQUIRED> ResourceName => Str

The name of the Amazon Web Services resource (for example, a
CloudFormation stack in the case of CFN_STACK_SYNC) that will be
synchronized from the linked repository.



=head2 B<REQUIRED> RoleArn => Str

The ARN of the IAM role that grants permission for Amazon Web Services
to use Git sync to update a given Amazon Web Services resource on your
behalf.



=head2 B<REQUIRED> SyncType => Str

The type of sync configuration.

Valid values are: C<"CFN_STACK_SYNC">

=head2 TriggerResourceUpdateOn => Str

When to trigger Git sync to begin the stack update.

Valid values are: C<"ANY_CHANGE">, C<"FILE_CHANGE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSyncConfiguration in L<Paws::CodeStarConnections>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

