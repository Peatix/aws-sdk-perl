
package Paws::CodeConnections::UpdateSyncConfiguration;
  use Moose;
  has Branch => (is => 'ro', isa => 'Str');
  has ConfigFile => (is => 'ro', isa => 'Str');
  has PublishDeploymentStatus => (is => 'ro', isa => 'Str');
  has PullRequestComment => (is => 'ro', isa => 'Str');
  has RepositoryLinkId => (is => 'ro', isa => 'Str');
  has ResourceName => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');
  has SyncType => (is => 'ro', isa => 'Str', required => 1);
  has TriggerResourceUpdateOn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSyncConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeConnections::UpdateSyncConfigurationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeConnections::UpdateSyncConfiguration - Arguments for method UpdateSyncConfiguration on L<Paws::CodeConnections>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSyncConfiguration on the
L<AWS CodeConnections|Paws::CodeConnections> service. Use the attributes of this class
as arguments to method UpdateSyncConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSyncConfiguration.

=head1 SYNOPSIS

    my $codeconnections = Paws->service('CodeConnections');
    my $UpdateSyncConfigurationOutput =
      $codeconnections->UpdateSyncConfiguration(
      ResourceName            => 'MyResourceName',
      SyncType                => 'CFN_STACK_SYNC',
      Branch                  => 'MyBranchName',            # OPTIONAL
      ConfigFile              => 'MyDeploymentFilePath',    # OPTIONAL
      PublishDeploymentStatus => 'ENABLED',                 # OPTIONAL
      PullRequestComment      => 'ENABLED',                 # OPTIONAL
      RepositoryLinkId        => 'MyRepositoryLinkId',      # OPTIONAL
      RoleArn                 => 'MyIamRoleArn',            # OPTIONAL
      TriggerResourceUpdateOn => 'ANY_CHANGE',              # OPTIONAL
      );

    # Results:
    my $SyncConfiguration = $UpdateSyncConfigurationOutput->SyncConfiguration;

    # Returns a L<Paws::CodeConnections::UpdateSyncConfigurationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeconnections/UpdateSyncConfiguration>

=head1 ATTRIBUTES


=head2 Branch => Str

The branch for the sync configuration to be updated.



=head2 ConfigFile => Str

The configuration file for the sync configuration to be updated.



=head2 PublishDeploymentStatus => Str

Whether to enable or disable publishing of deployment status to source
providers.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 PullRequestComment => Str

TA toggle that specifies whether to enable or disable pull request
comments for the sync configuration to be updated.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 RepositoryLinkId => Str

The ID of the repository link for the sync configuration to be updated.



=head2 B<REQUIRED> ResourceName => Str

The name of the Amazon Web Services resource for the sync configuration
to be updated.



=head2 RoleArn => Str

The ARN of the IAM role for the sync configuration to be updated.



=head2 B<REQUIRED> SyncType => Str

The sync type for the sync configuration to be updated.

Valid values are: C<"CFN_STACK_SYNC">

=head2 TriggerResourceUpdateOn => Str

When to trigger Git sync to begin the stack update.

Valid values are: C<"ANY_CHANGE">, C<"FILE_CHANGE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSyncConfiguration in L<Paws::CodeConnections>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

