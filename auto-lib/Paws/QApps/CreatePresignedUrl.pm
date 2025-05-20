
package Paws::QApps::CreatePresignedUrl;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId', required => 1);
  has CardId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cardId', required => 1);
  has FileContentsSha256 => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fileContentsSha256', required => 1);
  has FileName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fileName', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'instance-id', required => 1);
  has Scope => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scope', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePresignedUrl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apps.createPresignedUrl');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QApps::CreatePresignedUrlOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::CreatePresignedUrl - Arguments for method CreatePresignedUrl on L<Paws::QApps>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePresignedUrl on the
L<QApps|Paws::QApps> service. Use the attributes of this class
as arguments to method CreatePresignedUrl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePresignedUrl.

=head1 SYNOPSIS

    my $data.qapps = Paws->service('QApps');
    my $CreatePresignedUrlOutput = $data . qapps->CreatePresignedUrl(
      AppId              => 'MyUUID',
      CardId             => 'MyUUID',
      FileContentsSha256 => 'MyCreatePresignedUrlInputFileContentsSha256String',
      FileName           => 'MyFilename',
      InstanceId         => 'MyInstanceId',
      Scope              => 'APPLICATION',
      SessionId          => 'MyUUID',    # OPTIONAL
    );

    # Results:
    my $FileId       = $CreatePresignedUrlOutput->FileId;
    my $PresignedUrl = $CreatePresignedUrlOutput->PresignedUrl;
    my $PresignedUrlExpiration =
      $CreatePresignedUrlOutput->PresignedUrlExpiration;
    my $PresignedUrlFields = $CreatePresignedUrlOutput->PresignedUrlFields;

    # Returns a L<Paws::QApps::CreatePresignedUrlOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.qapps/CreatePresignedUrl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The unique identifier of the Q App the file is associated with.



=head2 B<REQUIRED> CardId => Str

The unique identifier of the card the file is associated with.



=head2 B<REQUIRED> FileContentsSha256 => Str

The Base64-encoded SHA-256 digest of the contents of the file to be
uploaded.



=head2 B<REQUIRED> FileName => Str

The name of the file to be uploaded.



=head2 B<REQUIRED> InstanceId => Str

The unique identifier of the Amazon Q Business application environment
instance.



=head2 B<REQUIRED> Scope => Str

Whether the file is associated with a Q App definition or a specific Q
App session.

Valid values are: C<"APPLICATION">, C<"SESSION">

=head2 SessionId => Str

The unique identifier of the Q App session the file is associated with,
if applicable.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePresignedUrl in L<Paws::QApps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

