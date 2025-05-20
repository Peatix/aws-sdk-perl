
package Paws::Connect::GetAttachedFile;
  use Moose;
  has AssociatedResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'associatedResourceArn', required => 1);
  has FileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FileId', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has UrlExpiryInSeconds => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'urlExpiryInSeconds');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAttachedFile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/attached-files/{InstanceId}/{FileId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::GetAttachedFileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::GetAttachedFile - Arguments for method GetAttachedFile on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAttachedFile on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method GetAttachedFile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAttachedFile.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $GetAttachedFileResponse = $connect->GetAttachedFile(
      AssociatedResourceArn => 'MyARN',
      FileId                => 'MyFileId',
      InstanceId            => 'MyInstanceId',
      UrlExpiryInSeconds    => 1,                # OPTIONAL
    );

    # Results:
    my $AssociatedResourceArn = $GetAttachedFileResponse->AssociatedResourceArn;
    my $CreatedBy             = $GetAttachedFileResponse->CreatedBy;
    my $CreationTime          = $GetAttachedFileResponse->CreationTime;
    my $DownloadUrlMetadata   = $GetAttachedFileResponse->DownloadUrlMetadata;
    my $FileArn               = $GetAttachedFileResponse->FileArn;
    my $FileId                = $GetAttachedFileResponse->FileId;
    my $FileName              = $GetAttachedFileResponse->FileName;
    my $FileSizeInBytes       = $GetAttachedFileResponse->FileSizeInBytes;
    my $FileStatus            = $GetAttachedFileResponse->FileStatus;
    my $FileUseCaseType       = $GetAttachedFileResponse->FileUseCaseType;
    my $Tags                  = $GetAttachedFileResponse->Tags;

    # Returns a L<Paws::Connect::GetAttachedFileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/GetAttachedFile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociatedResourceArn => Str

The resource to which the attached file is (being) uploaded to. The
supported resources are Cases
(https://docs.aws.amazon.com/connect/latest/adminguide/cases.html) and
Email
(https://docs.aws.amazon.com/connect/latest/adminguide/setup-email-channel.html).

This value must be a valid ARN.



=head2 B<REQUIRED> FileId => Str

The unique identifier of the attached file resource.



=head2 B<REQUIRED> InstanceId => Str

The unique identifier of the Amazon Connect instance.



=head2 UrlExpiryInSeconds => Int

Optional override for the expiry of the pre-signed S3 URL in seconds.
The default value is 300.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAttachedFile in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

