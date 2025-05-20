
package Paws::WorkSpaces::RegisterWorkspaceDirectory;
  use Moose;
  has ActiveDirectoryConfig => (is => 'ro', isa => 'Paws::WorkSpaces::ActiveDirectoryConfig');
  has DirectoryId => (is => 'ro', isa => 'Str');
  has EnableSelfService => (is => 'ro', isa => 'Bool');
  has IdcInstanceArn => (is => 'ro', isa => 'Str');
  has MicrosoftEntraConfig => (is => 'ro', isa => 'Paws::WorkSpaces::MicrosoftEntraConfig');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::Tag]');
  has Tenancy => (is => 'ro', isa => 'Str');
  has UserIdentityType => (is => 'ro', isa => 'Str');
  has WorkspaceDirectoryDescription => (is => 'ro', isa => 'Str');
  has WorkspaceDirectoryName => (is => 'ro', isa => 'Str');
  has WorkspaceType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterWorkspaceDirectory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::RegisterWorkspaceDirectoryResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::RegisterWorkspaceDirectory - Arguments for method RegisterWorkspaceDirectory on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterWorkspaceDirectory on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method RegisterWorkspaceDirectory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterWorkspaceDirectory.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $RegisterWorkspaceDirectoryResult =
      $workspaces->RegisterWorkspaceDirectory(
      ActiveDirectoryConfig => {
        DomainName              => 'MyDomainName',
        ServiceAccountSecretArn => 'MySecretsManagerArn',

      },    # OPTIONAL
      DirectoryId          => 'MyDirectoryId',    # OPTIONAL
      EnableSelfService    => 1,                  # OPTIONAL
      IdcInstanceArn       => 'MyARN',            # OPTIONAL
      MicrosoftEntraConfig => {
        ApplicationConfigSecretArn => 'MySecretsManagerArn',
        TenantId => 'MyMicrosoftEntraConfigTenantId',    # OPTIONAL
      },    # OPTIONAL
      SubnetIds => [
        'MySubnetId', ...    # min: 15, max: 24
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 127
          Value => 'MyTagValue',    # max: 255; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Tenancy                       => 'DEDICATED',           # OPTIONAL
      UserIdentityType              => 'CUSTOMER_MANAGED',    # OPTIONAL
      WorkspaceDirectoryDescription =>
        'MyWorkspaceDirectoryDescription',                    # OPTIONAL
      WorkspaceDirectoryName => 'MyWorkspaceDirectoryName',   # OPTIONAL
      WorkspaceType          => 'PERSONAL',                   # OPTIONAL
      );

    # Results:
    my $DirectoryId = $RegisterWorkspaceDirectoryResult->DirectoryId;
    my $State       = $RegisterWorkspaceDirectoryResult->State;

    # Returns a L<Paws::WorkSpaces::RegisterWorkspaceDirectoryResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/RegisterWorkspaceDirectory>

=head1 ATTRIBUTES


=head2 ActiveDirectoryConfig => L<Paws::WorkSpaces::ActiveDirectoryConfig>

The active directory config of the directory.



=head2 DirectoryId => Str

The identifier of the directory. You cannot register a directory if it
does not have a status of Active. If the directory does not have a
status of Active, you will receive an InvalidResourceStateException
error. If you have already registered the maximum number of directories
that you can register with Amazon WorkSpaces, you will receive a
ResourceLimitExceededException error. Deregister directories that you
are not using for WorkSpaces, and try again.



=head2 EnableSelfService => Bool

Indicates whether self-service capabilities are enabled or disabled.



=head2 IdcInstanceArn => Str

The Amazon Resource Name (ARN) of the identity center instance.



=head2 MicrosoftEntraConfig => L<Paws::WorkSpaces::MicrosoftEntraConfig>

The details about Microsoft Entra config.



=head2 SubnetIds => ArrayRef[Str|Undef]

The identifiers of the subnets for your virtual private cloud (VPC).
Make sure that the subnets are in supported Availability Zones. The
subnets must also be in separate Availability Zones. If these
conditions are not met, you will receive an
OperationNotSupportedException error.



=head2 Tags => ArrayRef[L<Paws::WorkSpaces::Tag>]

The tags associated with the directory.



=head2 Tenancy => Str

Indicates whether your WorkSpace directory is dedicated or shared. To
use Bring Your Own License (BYOL) images, this value must be set to
C<DEDICATED> and your Amazon Web Services account must be enabled for
BYOL. If your account has not been enabled for BYOL, you will receive
an InvalidParameterValuesException error. For more information about
BYOL images, see Bring Your Own Windows Desktop Images
(https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html).

Valid values are: C<"DEDICATED">, C<"SHARED">

=head2 UserIdentityType => Str

The type of identity management the user is using.

Valid values are: C<"CUSTOMER_MANAGED">, C<"AWS_DIRECTORY_SERVICE">, C<"AWS_IAM_IDENTITY_CENTER">

=head2 WorkspaceDirectoryDescription => Str

Description of the directory to register.



=head2 WorkspaceDirectoryName => Str

The name of the directory to register.



=head2 WorkspaceType => Str

Indicates whether the directory's WorkSpace type is personal or pools.

Valid values are: C<"PERSONAL">, C<"POOLS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterWorkspaceDirectory in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

