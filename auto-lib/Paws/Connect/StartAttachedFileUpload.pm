
package Paws::Connect::StartAttachedFileUpload;
  use Moose;
  has AssociatedResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'associatedResourceArn', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has CreatedBy => (is => 'ro', isa => 'Paws::Connect::CreatedByInfo');
  has FileName => (is => 'ro', isa => 'Str', required => 1);
  has FileSizeInBytes => (is => 'ro', isa => 'Int', required => 1);
  has FileUseCaseType => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Connect::TagMap');
  has UrlExpiryInSeconds => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartAttachedFileUpload');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/attached-files/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::StartAttachedFileUploadResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::StartAttachedFileUpload - Arguments for method StartAttachedFileUpload on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartAttachedFileUpload on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method StartAttachedFileUpload.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartAttachedFileUpload.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $StartAttachedFileUploadResponse = $connect->StartAttachedFileUpload(
      AssociatedResourceArn => 'MyARN',
      FileName              => 'MyFileName',
      FileSizeInBytes       => 1,
      FileUseCaseType       => 'EMAIL_MESSAGE',
      InstanceId            => 'MyInstanceId',
      ClientToken           => 'MyClientToken',    # OPTIONAL
      CreatedBy             => {
        AWSIdentityArn => 'MyARN',
        ConnectUserArn => 'MyARN',
      },                                           # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      UrlExpiryInSeconds => 1,    # OPTIONAL
    );

    # Results:
    my $CreatedBy         = $StartAttachedFileUploadResponse->CreatedBy;
    my $CreationTime      = $StartAttachedFileUploadResponse->CreationTime;
    my $FileArn           = $StartAttachedFileUploadResponse->FileArn;
    my $FileId            = $StartAttachedFileUploadResponse->FileId;
    my $FileStatus        = $StartAttachedFileUploadResponse->FileStatus;
    my $UploadUrlMetadata = $StartAttachedFileUploadResponse->UploadUrlMetadata;

    # Returns a L<Paws::Connect::StartAttachedFileUploadResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/StartAttachedFileUpload>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociatedResourceArn => Str

The resource to which the attached file is (being) uploaded to. The
supported resources are Cases
(https://docs.aws.amazon.com/connect/latest/adminguide/cases.html) and
Email
(https://docs.aws.amazon.com/connect/latest/adminguide/setup-email-channel.html).

This value must be a valid ARN.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 CreatedBy => L<Paws::Connect::CreatedByInfo>

Represents the identity that created the file.



=head2 B<REQUIRED> FileName => Str

A case-sensitive name of the attached file being uploaded.



=head2 B<REQUIRED> FileSizeInBytes => Int

The size of the attached file in bytes.



=head2 B<REQUIRED> FileUseCaseType => Str

The use case for the file.

Only C<ATTACHMENTS> are supported.

Valid values are: C<"EMAIL_MESSAGE">, C<"ATTACHMENT">

=head2 B<REQUIRED> InstanceId => Str

The unique identifier of the Amazon Connect instance.



=head2 Tags => L<Paws::Connect::TagMap>

The tags used to organize, track, or control access for this resource.
For example, C<{ "Tags": {"key1":"value1", "key2":"value2"} }>.



=head2 UrlExpiryInSeconds => Int

Optional override for the expiry of the pre-signed S3 URL in seconds.
The default value is 300.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartAttachedFileUpload in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

