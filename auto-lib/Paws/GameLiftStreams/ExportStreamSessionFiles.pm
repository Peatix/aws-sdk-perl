
package Paws::GameLiftStreams::ExportStreamSessionFiles;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);
  has OutputUri => (is => 'ro', isa => 'Str', required => 1);
  has StreamSessionIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'StreamSessionIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExportStreamSessionFiles');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}/exportfiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLiftStreams::ExportStreamSessionFilesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::ExportStreamSessionFiles - Arguments for method ExportStreamSessionFiles on L<Paws::GameLiftStreams>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExportStreamSessionFiles on the
L<Amazon GameLift Streams|Paws::GameLiftStreams> service. Use the attributes of this class
as arguments to method ExportStreamSessionFiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExportStreamSessionFiles.

=head1 SYNOPSIS

    my $gameliftstreams = Paws->service('GameLiftStreams');
    my $ExportStreamSessionFilesOutput =
      $gameliftstreams->ExportStreamSessionFiles(
      Identifier              => 'MyIdentifier',
      OutputUri               => 'MyOutputUri',
      StreamSessionIdentifier => 'MyIdentifier',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gameliftstreams/ExportStreamSessionFiles>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

An Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
or ID that uniquely identifies the stream group resource. Format
example:
ARN-C<arn:aws:gameliftstreams:us-west-2:123456789012:streamgroup/sg-1AB2C3De4>
or ID-C<sg-1AB2C3De4>.



=head2 B<REQUIRED> OutputUri => Str

The S3 bucket URI where Amazon GameLift Streams uploads the set of
compressed exported files for this stream session. Amazon GameLift
Streams generates a ZIP file name based on the stream session metadata.
Alternatively, you can provide a custom file name with a C<.zip> file
extension.

Example 1: If you provide an S3 URI called
C<s3://MyBucket/MyGame_Session1.zip>, then Amazon GameLift Streams will
save the files at that location.

Example 2: If you provide an S3 URI called
C<s3://MyBucket/MyGameSessions_ExportedFiles/>, then Amazon GameLift
Streams will save the files at
C<s3://MyBucket/MyGameSessions_ExportedFiles/YYYYMMDD-HHMMSS-appId-sg-Id-sessionId.zip>
or another similar name.



=head2 B<REQUIRED> StreamSessionIdentifier => Str

An Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
or ID that uniquely identifies the stream session resource. Format
example: C<1AB2C3De4>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExportStreamSessionFiles in L<Paws::GameLiftStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

