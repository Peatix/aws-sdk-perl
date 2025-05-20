
package Paws::GameLiftStreams::CreateApplication;
  use Moose;
  has ApplicationLogOutputUri => (is => 'ro', isa => 'Str');
  has ApplicationLogPaths => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ApplicationSourceUri => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has ExecutablePath => (is => 'ro', isa => 'Str', required => 1);
  has RuntimeEnvironment => (is => 'ro', isa => 'Paws::GameLiftStreams::RuntimeEnvironment', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::GameLiftStreams::Tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLiftStreams::CreateApplicationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::CreateApplication - Arguments for method CreateApplication on L<Paws::GameLiftStreams>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApplication on the
L<Amazon GameLift Streams|Paws::GameLiftStreams> service. Use the attributes of this class
as arguments to method CreateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApplication.

=head1 SYNOPSIS

    my $gameliftstreams = Paws->service('GameLiftStreams');
    my $CreateApplicationOutput = $gameliftstreams->CreateApplication(
      ApplicationSourceUri => 'MyApplicationSourceUri',
      Description          => 'MyDescription',
      ExecutablePath       => 'MyExecutablePath',
      RuntimeEnvironment   => {
        Type    => 'PROTON',    # values: PROTON, WINDOWS, UBUNTU
        Version => 'MyRuntimeEnvironmentVersion',    # min: 1, max: 256

      },
      ApplicationLogOutputUri => 'MyApplicationLogOutputUri',    # OPTIONAL
      ApplicationLogPaths     => [
        'MyFilePath', ...                                        # max: 1024
      ],    # OPTIONAL
      ClientToken => 'MyClientToken',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $ApplicationLogOutputUri =
      $CreateApplicationOutput->ApplicationLogOutputUri;
    my $ApplicationLogPaths  = $CreateApplicationOutput->ApplicationLogPaths;
    my $ApplicationSourceUri = $CreateApplicationOutput->ApplicationSourceUri;
    my $Arn                  = $CreateApplicationOutput->Arn;
    my $AssociatedStreamGroups =
      $CreateApplicationOutput->AssociatedStreamGroups;
    my $CreatedAt           = $CreateApplicationOutput->CreatedAt;
    my $Description         = $CreateApplicationOutput->Description;
    my $ExecutablePath      = $CreateApplicationOutput->ExecutablePath;
    my $Id                  = $CreateApplicationOutput->Id;
    my $LastUpdatedAt       = $CreateApplicationOutput->LastUpdatedAt;
    my $ReplicationStatuses = $CreateApplicationOutput->ReplicationStatuses;
    my $RuntimeEnvironment  = $CreateApplicationOutput->RuntimeEnvironment;
    my $Status              = $CreateApplicationOutput->Status;
    my $StatusReason        = $CreateApplicationOutput->StatusReason;

    # Returns a L<Paws::GameLiftStreams::CreateApplicationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gameliftstreams/CreateApplication>

=head1 ATTRIBUTES


=head2 ApplicationLogOutputUri => Str

An Amazon S3 URI to a bucket where you would like Amazon GameLift
Streams to save application logs. Required if you specify one or more
C<ApplicationLogPaths>.

The log bucket must have permissions that give Amazon GameLift Streams
access to write the log files. For more information, see B<Getting
Started> in the Amazon GameLift Streams Developer Guide.



=head2 ApplicationLogPaths => ArrayRef[Str|Undef]

Locations of log files that your content generates during a stream
session. Enter path values that are relative to the
C<ApplicationSourceUri> location. You can specify up to 10 log paths.
Amazon GameLift Streams uploads designated log files to the Amazon S3
bucket that you specify in C<ApplicationLogOutputUri> at the end of a
stream session. To retrieve stored log files, call GetStreamSession
(https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamSession.html)
and get the C<LogFileLocationUri>.



=head2 B<REQUIRED> ApplicationSourceUri => Str

The location of the content that you want to stream. Enter an Amazon S3
URI to a bucket that contains your game or other application. The
location can have a multi-level prefix structure, but it must include
all the files needed to run the content. Amazon GameLift Streams copies
everything under the specified location.

This value is immutable. To designate a different content location,
create a new application.

The Amazon S3 bucket and the Amazon GameLift Streams application must
be in the same Amazon Web Services Region.



=head2 ClientToken => Str

A unique identifier that represents a client request. The request is
idempotent, which ensures that an API request completes only once. When
users send a request, Amazon GameLift Streams automatically populates
this field.



=head2 B<REQUIRED> Description => Str

A human-readable label for the application. You can update this value
later.



=head2 B<REQUIRED> ExecutablePath => Str

The path and file name of the executable file that launches the content
for streaming. Enter a path value that is relative to the location set
in C<ApplicationSourceUri>.



=head2 B<REQUIRED> RuntimeEnvironment => L<Paws::GameLiftStreams::RuntimeEnvironment>

Configuration settings that identify the operating system for an
application resource. This can also include a compatibility layer and
other drivers.

A runtime environment can be one of the following:

=over

=item *

For Linux applications

=over

=item *

Ubuntu 22.04 LTS (C<Type=UBUNTU, Version=22_04_LTS>)

=back

=item *

For Windows applications

=over

=item *

Microsoft Windows Server 2022 Base (C<Type=WINDOWS, Version=2022>)

=item *

Proton 8.0-5 (C<Type=PROTON, Version=20241007>)

=item *

Proton 8.0-2c (C<Type=PROTON, Version=20230704>)

=back

=back




=head2 Tags => L<Paws::GameLiftStreams::Tags>

A list of labels to assign to the new application resource. Tags are
developer-defined key-value pairs. Tagging Amazon Web Services
resources is useful for resource management, access management and cost
allocation. See Tagging Amazon Web Services Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<Amazon Web Services General Reference>. You can use TagResource
(https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_TagResource.html)
to add tags, UntagResource
(https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_UntagResource.html)
to remove tags, and ListTagsForResource
(https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_ListTagsForResource.html)
to view tags on existing resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApplication in L<Paws::GameLiftStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

