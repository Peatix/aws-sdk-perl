
package Paws::WorkSpaces::CreateWorkspacesPool;
  use Moose;
  has ApplicationSettings => (is => 'ro', isa => 'Paws::WorkSpaces::ApplicationSettingsRequest');
  has BundleId => (is => 'ro', isa => 'Str', required => 1);
  has Capacity => (is => 'ro', isa => 'Paws::WorkSpaces::Capacity', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has PoolName => (is => 'ro', isa => 'Str', required => 1);
  has RunningMode => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::Tag]');
  has TimeoutSettings => (is => 'ro', isa => 'Paws::WorkSpaces::TimeoutSettings');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWorkspacesPool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::CreateWorkspacesPoolResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::CreateWorkspacesPool - Arguments for method CreateWorkspacesPool on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWorkspacesPool on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method CreateWorkspacesPool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWorkspacesPool.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $CreateWorkspacesPoolResult = $workspaces->CreateWorkspacesPool(
      BundleId => 'MyBundleId',
      Capacity => {
        DesiredUserSessions => 1,

      },
      Description         => 'MyUpdateDescription',
      DirectoryId         => 'MyDirectoryId',
      PoolName            => 'MyWorkspacesPoolName',
      ApplicationSettings => {
        Status        => 'DISABLED',           # values: DISABLED, ENABLED
        SettingsGroup => 'MySettingsGroup',    # max: 100; OPTIONAL
      },    # OPTIONAL
      RunningMode => 'AUTO_STOP',    # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 127
          Value => 'MyTagValue',    # max: 255; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      TimeoutSettings => {
        DisconnectTimeoutInSeconds     => 1,   # min: 60, max: 36000; OPTIONAL
        IdleDisconnectTimeoutInSeconds => 1,   # max: 36000; OPTIONAL
        MaxUserDurationInSeconds       => 1,   # min: 600, max: 432000; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $WorkspacesPool = $CreateWorkspacesPoolResult->WorkspacesPool;

    # Returns a L<Paws::WorkSpaces::CreateWorkspacesPoolResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/CreateWorkspacesPool>

=head1 ATTRIBUTES


=head2 ApplicationSettings => L<Paws::WorkSpaces::ApplicationSettingsRequest>

Indicates the application settings of the pool.



=head2 B<REQUIRED> BundleId => Str

The identifier of the bundle for the pool.



=head2 B<REQUIRED> Capacity => L<Paws::WorkSpaces::Capacity>

The user capacity of the pool.



=head2 B<REQUIRED> Description => Str

The pool description.



=head2 B<REQUIRED> DirectoryId => Str

The identifier of the directory for the pool.



=head2 B<REQUIRED> PoolName => Str

The name of the pool.



=head2 RunningMode => Str

The running mode for the pool.

Valid values are: C<"AUTO_STOP">, C<"ALWAYS_ON">

=head2 Tags => ArrayRef[L<Paws::WorkSpaces::Tag>]

The tags for the pool.



=head2 TimeoutSettings => L<Paws::WorkSpaces::TimeoutSettings>

Indicates the timeout settings of the pool.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorkspacesPool in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

