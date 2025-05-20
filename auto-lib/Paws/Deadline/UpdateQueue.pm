
package Paws::Deadline::UpdateQueue;
  use Moose;
  has AllowedStorageProfileIdsToAdd => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'allowedStorageProfileIdsToAdd');
  has AllowedStorageProfileIdsToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'allowedStorageProfileIdsToRemove');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Token');
  has DefaultBudgetAction => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultBudgetAction');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has JobAttachmentSettings => (is => 'ro', isa => 'Paws::Deadline::JobAttachmentSettings', traits => ['NameInRequest'], request_name => 'jobAttachmentSettings');
  has JobRunAsUser => (is => 'ro', isa => 'Paws::Deadline::JobRunAsUser', traits => ['NameInRequest'], request_name => 'jobRunAsUser');
  has QueueId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'queueId', required => 1);
  has RequiredFileSystemLocationNamesToAdd => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'requiredFileSystemLocationNamesToAdd');
  has RequiredFileSystemLocationNamesToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'requiredFileSystemLocationNamesToRemove');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateQueue');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/queues/{queueId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::UpdateQueueResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::UpdateQueue - Arguments for method UpdateQueue on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateQueue on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method UpdateQueue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateQueue.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $UpdateQueueResponse = $deadline->UpdateQueue(
      FarmId                        => 'MyFarmId',
      QueueId                       => 'MyQueueId',
      AllowedStorageProfileIdsToAdd => [ 'MyStorageProfileId', ... ], # OPTIONAL
      AllowedStorageProfileIdsToRemove => [ 'MyStorageProfileId', ... ]
      ,                                                               # OPTIONAL
      ClientToken           => 'MyClientToken',                       # OPTIONAL
      DefaultBudgetAction   => 'NONE',                                # OPTIONAL
      Description           => 'MyDescription',                       # OPTIONAL
      DisplayName           => 'MyResourceName',                      # OPTIONAL
      JobAttachmentSettings => {
        RootPrefix   => 'MyS3Prefix',        # min: 1, max: 63
        S3BucketName => 'MyS3BucketName',    # min: 1, max: 255

      },    # OPTIONAL
      JobRunAsUser => {
        RunAs => 'QUEUE_CONFIGURED_USER'
        ,    # values: QUEUE_CONFIGURED_USER, WORKER_AGENT_USER
        Posix => {
          Group => 'MyPosixUserGroupString',    # max: 31
          User  => 'MyPosixUserUserString',     # max: 31

        },    # OPTIONAL
        Windows => {
          PasswordArn => 'MyWindowsUserPasswordArnString',  # min: 20, max: 2048
          User        => 'MyWindowsUserUserString',         # max: 111

        },    # OPTIONAL
      },    # OPTIONAL
      RequiredFileSystemLocationNamesToAdd => [
        'MyFileSystemLocationName', ...    # min: 1, max: 64
      ],    # OPTIONAL
      RequiredFileSystemLocationNamesToRemove => [
        'MyFileSystemLocationName', ...    # min: 1, max: 64
      ],    # OPTIONAL
      RoleArn => 'MyIamRoleArn',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/UpdateQueue>

=head1 ATTRIBUTES


=head2 AllowedStorageProfileIdsToAdd => ArrayRef[Str|Undef]

The storage profile IDs to add.



=head2 AllowedStorageProfileIdsToRemove => ArrayRef[Str|Undef]

The storage profile ID to remove.



=head2 ClientToken => Str

The idempotency token to update in the queue.



=head2 DefaultBudgetAction => Str

The default action to take for a queue update if a budget isn't
configured.

Valid values are: C<"NONE">, C<"STOP_SCHEDULING_AND_COMPLETE_TASKS">, C<"STOP_SCHEDULING_AND_CANCEL_TASKS">

=head2 Description => Str

The description of the queue to update.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.



=head2 DisplayName => Str

The display name of the queue to update.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.



=head2 B<REQUIRED> FarmId => Str

The farm ID to update in the queue.



=head2 JobAttachmentSettings => L<Paws::Deadline::JobAttachmentSettings>

The job attachment settings to update for the queue.



=head2 JobRunAsUser => L<Paws::Deadline::JobRunAsUser>

Update the jobs in the queue to run as a specified POSIX user.



=head2 B<REQUIRED> QueueId => Str

The queue ID to update.



=head2 RequiredFileSystemLocationNamesToAdd => ArrayRef[Str|Undef]

The required file system location names to add to the queue.



=head2 RequiredFileSystemLocationNamesToRemove => ArrayRef[Str|Undef]

The required file system location names to remove from the queue.



=head2 RoleArn => Str

The IAM role ARN that's used to run jobs from this queue.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateQueue in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

