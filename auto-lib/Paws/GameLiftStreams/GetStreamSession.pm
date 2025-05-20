
package Paws::GameLiftStreams::GetStreamSession;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);
  has StreamSessionIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'StreamSessionIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetStreamSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLiftStreams::GetStreamSessionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::GetStreamSession - Arguments for method GetStreamSession on L<Paws::GameLiftStreams>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetStreamSession on the
L<Amazon GameLift Streams|Paws::GameLiftStreams> service. Use the attributes of this class
as arguments to method GetStreamSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetStreamSession.

=head1 SYNOPSIS

    my $gameliftstreams = Paws->service('GameLiftStreams');
    my $GetStreamSessionOutput = $gameliftstreams->GetStreamSession(
      Identifier              => 'MyIdentifier',
      StreamSessionIdentifier => 'MyIdentifier',

    );

    # Results:
    my $AdditionalEnvironmentVariables =
      $GetStreamSessionOutput->AdditionalEnvironmentVariables;
    my $AdditionalLaunchArgs = $GetStreamSessionOutput->AdditionalLaunchArgs;
    my $ApplicationArn       = $GetStreamSessionOutput->ApplicationArn;
    my $Arn                  = $GetStreamSessionOutput->Arn;
    my $ConnectionTimeoutSeconds =
      $GetStreamSessionOutput->ConnectionTimeoutSeconds;
    my $CreatedAt            = $GetStreamSessionOutput->CreatedAt;
    my $Description          = $GetStreamSessionOutput->Description;
    my $ExportFilesMetadata  = $GetStreamSessionOutput->ExportFilesMetadata;
    my $LastUpdatedAt        = $GetStreamSessionOutput->LastUpdatedAt;
    my $Location             = $GetStreamSessionOutput->Location;
    my $LogFileLocationUri   = $GetStreamSessionOutput->LogFileLocationUri;
    my $Protocol             = $GetStreamSessionOutput->Protocol;
    my $SessionLengthSeconds = $GetStreamSessionOutput->SessionLengthSeconds;
    my $SignalRequest        = $GetStreamSessionOutput->SignalRequest;
    my $SignalResponse       = $GetStreamSessionOutput->SignalResponse;
    my $Status               = $GetStreamSessionOutput->Status;
    my $StatusReason         = $GetStreamSessionOutput->StatusReason;
    my $StreamGroupId        = $GetStreamSessionOutput->StreamGroupId;
    my $UserId               = $GetStreamSessionOutput->UserId;
    my $WebSdkProtocolUrl    = $GetStreamSessionOutput->WebSdkProtocolUrl;

    # Returns a L<Paws::GameLiftStreams::GetStreamSessionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gameliftstreams/GetStreamSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The stream group that runs this stream session.

This value is an Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
or ID that uniquely identifies the stream group resource. Format
example:
ARN-C<arn:aws:gameliftstreams:us-west-2:123456789012:streamgroup/sg-1AB2C3De4>
or ID-C<sg-1AB2C3De4>.



=head2 B<REQUIRED> StreamSessionIdentifier => Str

An Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
that uniquely identifies the stream session resource. Format example:
C<1AB2C3De4>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetStreamSession in L<Paws::GameLiftStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

