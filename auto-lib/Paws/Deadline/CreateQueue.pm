
package Paws::Deadline::CreateQueue;
  use Moose;
  has AllowedStorageProfileIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'allowedStorageProfileIds');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Token');
  has DefaultBudgetAction => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultBudgetAction');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName', required => 1);
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has JobAttachmentSettings => (is => 'ro', isa => 'Paws::Deadline::JobAttachmentSettings', traits => ['NameInRequest'], request_name => 'jobAttachmentSettings');
  has JobRunAsUser => (is => 'ro', isa => 'Paws::Deadline::JobRunAsUser', traits => ['NameInRequest'], request_name => 'jobRunAsUser');
  has RequiredFileSystemLocationNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'requiredFileSystemLocationNames');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has Tags => (is => 'ro', isa => 'Paws::Deadline::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateQueue');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/queues');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::CreateQueueResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::CreateQueue - Arguments for method CreateQueue on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateQueue on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method CreateQueue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateQueue.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $CreateQueueResponse = $deadline->CreateQueue(
      DisplayName              => 'MyResourceName',
      FarmId                   => 'MyFarmId',
      AllowedStorageProfileIds => [ 'MyStorageProfileId', ... ],    # OPTIONAL
      ClientToken              => 'MyClientToken',                  # OPTIONAL
      DefaultBudgetAction      => 'NONE',                           # OPTIONAL
      Description              => 'MyDescription',                  # OPTIONAL
      JobAttachmentSettings    => {
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
      RequiredFileSystemLocationNames => [
        'MyFileSystemLocationName', ...    # min: 1, max: 64
      ],    # OPTIONAL
      RoleArn => 'MyIamRoleArn',                   # OPTIONAL
      Tags    => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $QueueId = $CreateQueueResponse->QueueId;

    # Returns a L<Paws::Deadline::CreateQueueResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/CreateQueue>

=head1 ATTRIBUTES


=head2 AllowedStorageProfileIds => ArrayRef[Str|Undef]

The storage profile IDs to include in the queue.



=head2 ClientToken => Str

The unique token which the server uses to recognize retries of the same
request.



=head2 DefaultBudgetAction => Str

The default action to take on a queue if a budget isn't configured.

Valid values are: C<"NONE">, C<"STOP_SCHEDULING_AND_COMPLETE_TASKS">, C<"STOP_SCHEDULING_AND_CANCEL_TASKS">

=head2 Description => Str

The description of the queue.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.



=head2 B<REQUIRED> DisplayName => Str

The display name of the queue.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.



=head2 B<REQUIRED> FarmId => Str

The farm ID of the farm to connect to the queue.



=head2 JobAttachmentSettings => L<Paws::Deadline::JobAttachmentSettings>

The job attachment settings for the queue. These are the Amazon S3
bucket name and the Amazon S3 prefix.



=head2 JobRunAsUser => L<Paws::Deadline::JobRunAsUser>

The jobs in the queue run as the specified POSIX user.



=head2 RequiredFileSystemLocationNames => ArrayRef[Str|Undef]

The file system location name to include in the queue.



=head2 RoleArn => Str

The IAM role ARN that workers will use while running jobs for this
queue.



=head2 Tags => L<Paws::Deadline::Tags>

Each tag consists of a tag key and a tag value. Tag keys and values are
both required, but tag values can be empty strings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateQueue in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

