
package Paws::SecurityIR::GetCaseAttachmentUploadUrl;
  use Moose;
  has CaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'caseId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ContentLength => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'contentLength', required => 1);
  has FileName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fileName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCaseAttachmentUploadUrl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/cases/{caseId}/get-presigned-url');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityIR::GetCaseAttachmentUploadUrlResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::GetCaseAttachmentUploadUrl - Arguments for method GetCaseAttachmentUploadUrl on L<Paws::SecurityIR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCaseAttachmentUploadUrl on the
L<Security Incident Response|Paws::SecurityIR> service. Use the attributes of this class
as arguments to method GetCaseAttachmentUploadUrl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCaseAttachmentUploadUrl.

=head1 SYNOPSIS

    my $security-ir = Paws->service('SecurityIR');
    my $GetCaseAttachmentUploadUrlResponse =
      $security -ir->GetCaseAttachmentUploadUrl(
      CaseId        => 'MyCaseId',
      ContentLength => 1,
      FileName      => 'MyFileName',
      ClientToken   =>
        'MyGetCaseAttachmentUploadUrlRequestClientTokenString',    # OPTIONAL
      );

    # Results:
    my $AttachmentPresignedUrl =
      $GetCaseAttachmentUploadUrlResponse->AttachmentPresignedUrl;

    # Returns a L<Paws::SecurityIR::GetCaseAttachmentUploadUrlResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/security-ir/GetCaseAttachmentUploadUrl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CaseId => Str

Required element for GetCaseAttachmentUploadUrl to identify the case ID
for uploading an attachment to.



=head2 ClientToken => Str

Optional element for customer provided token.



=head2 B<REQUIRED> ContentLength => Int

Required element for GetCaseAttachmentUploadUrl to identify the size od
the file attachment.



=head2 B<REQUIRED> FileName => Str

Required element for GetCaseAttachmentUploadUrl to identify the file
name of the attachment to upload.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCaseAttachmentUploadUrl in L<Paws::SecurityIR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

