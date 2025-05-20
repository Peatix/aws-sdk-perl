
package Paws::GameLiftStreams::UpdateApplication;
  use Moose;
  has ApplicationLogOutputUri => (is => 'ro', isa => 'Str');
  has ApplicationLogPaths => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Description => (is => 'ro', isa => 'Str');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{Identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLiftStreams::UpdateApplicationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::UpdateApplication - Arguments for method UpdateApplication on L<Paws::GameLiftStreams>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApplication on the
L<Amazon GameLift Streams|Paws::GameLiftStreams> service. Use the attributes of this class
as arguments to method UpdateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApplication.

=head1 SYNOPSIS

    my $gameliftstreams = Paws->service('GameLiftStreams');
    my $UpdateApplicationOutput = $gameliftstreams->UpdateApplication(
      Identifier              => 'MyIdentifier',
      ApplicationLogOutputUri => 'MyApplicationLogOutputUri',    # OPTIONAL
      ApplicationLogPaths     => [
        'MyFilePath', ...                                        # max: 1024
      ],    # OPTIONAL
      Description => 'MyDescription',    # OPTIONAL
    );

    # Results:
    my $ApplicationLogOutputUri =
      $UpdateApplicationOutput->ApplicationLogOutputUri;
    my $ApplicationLogPaths  = $UpdateApplicationOutput->ApplicationLogPaths;
    my $ApplicationSourceUri = $UpdateApplicationOutput->ApplicationSourceUri;
    my $Arn                  = $UpdateApplicationOutput->Arn;
    my $AssociatedStreamGroups =
      $UpdateApplicationOutput->AssociatedStreamGroups;
    my $CreatedAt           = $UpdateApplicationOutput->CreatedAt;
    my $Description         = $UpdateApplicationOutput->Description;
    my $ExecutablePath      = $UpdateApplicationOutput->ExecutablePath;
    my $Id                  = $UpdateApplicationOutput->Id;
    my $LastUpdatedAt       = $UpdateApplicationOutput->LastUpdatedAt;
    my $ReplicationStatuses = $UpdateApplicationOutput->ReplicationStatuses;
    my $RuntimeEnvironment  = $UpdateApplicationOutput->RuntimeEnvironment;
    my $Status              = $UpdateApplicationOutput->Status;
    my $StatusReason        = $UpdateApplicationOutput->StatusReason;

    # Returns a L<Paws::GameLiftStreams::UpdateApplicationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gameliftstreams/UpdateApplication>

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



=head2 Description => Str

A human-readable label for the application.



=head2 B<REQUIRED> Identifier => Str

An Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
or ID that uniquely identifies the application resource. Format
example:
ARN-C<arn:aws:gameliftstreams:us-west-2:123456789012:application/a-9ZY8X7Wv6>
or ID-C<a-9ZY8X7Wv6>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApplication in L<Paws::GameLiftStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

