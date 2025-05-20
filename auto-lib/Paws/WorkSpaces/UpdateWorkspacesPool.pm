
package Paws::WorkSpaces::UpdateWorkspacesPool;
  use Moose;
  has ApplicationSettings => (is => 'ro', isa => 'Paws::WorkSpaces::ApplicationSettingsRequest');
  has BundleId => (is => 'ro', isa => 'Str');
  has Capacity => (is => 'ro', isa => 'Paws::WorkSpaces::Capacity');
  has Description => (is => 'ro', isa => 'Str');
  has DirectoryId => (is => 'ro', isa => 'Str');
  has PoolId => (is => 'ro', isa => 'Str', required => 1);
  has RunningMode => (is => 'ro', isa => 'Str');
  has TimeoutSettings => (is => 'ro', isa => 'Paws::WorkSpaces::TimeoutSettings');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWorkspacesPool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::UpdateWorkspacesPoolResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::UpdateWorkspacesPool - Arguments for method UpdateWorkspacesPool on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWorkspacesPool on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method UpdateWorkspacesPool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWorkspacesPool.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $UpdateWorkspacesPoolResult = $workspaces->UpdateWorkspacesPool(
      PoolId              => 'MyWorkspacesPoolId',
      ApplicationSettings => {
        Status        => 'DISABLED',           # values: DISABLED, ENABLED
        SettingsGroup => 'MySettingsGroup',    # max: 100; OPTIONAL
      },    # OPTIONAL
      BundleId => 'MyBundleId',    # OPTIONAL
      Capacity => {
        DesiredUserSessions => 1,

      },                           # OPTIONAL
      Description     => 'MyUpdateDescription',    # OPTIONAL
      DirectoryId     => 'MyDirectoryId',          # OPTIONAL
      RunningMode     => 'AUTO_STOP',              # OPTIONAL
      TimeoutSettings => {
        DisconnectTimeoutInSeconds     => 1,   # min: 60, max: 36000; OPTIONAL
        IdleDisconnectTimeoutInSeconds => 1,   # max: 36000; OPTIONAL
        MaxUserDurationInSeconds       => 1,   # min: 600, max: 432000; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $WorkspacesPool = $UpdateWorkspacesPoolResult->WorkspacesPool;

    # Returns a L<Paws::WorkSpaces::UpdateWorkspacesPoolResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/UpdateWorkspacesPool>

=head1 ATTRIBUTES


=head2 ApplicationSettings => L<Paws::WorkSpaces::ApplicationSettingsRequest>

The persistent application settings for users in the pool.



=head2 BundleId => Str

The identifier of the bundle.



=head2 Capacity => L<Paws::WorkSpaces::Capacity>

The desired capacity for the pool.



=head2 Description => Str

Describes the specified pool to update.



=head2 DirectoryId => Str

The identifier of the directory.



=head2 B<REQUIRED> PoolId => Str

The identifier of the specified pool to update.



=head2 RunningMode => Str

The desired running mode for the pool. The running mode can only be
updated when the pool is in a stopped state.

Valid values are: C<"AUTO_STOP">, C<"ALWAYS_ON">

=head2 TimeoutSettings => L<Paws::WorkSpaces::TimeoutSettings>

Indicates the timeout settings of the specified pool.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWorkspacesPool in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

