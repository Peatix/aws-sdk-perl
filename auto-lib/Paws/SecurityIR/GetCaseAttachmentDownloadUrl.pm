
package Paws::SecurityIR::GetCaseAttachmentDownloadUrl;
  use Moose;
  has AttachmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'attachmentId', required => 1);
  has CaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'caseId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCaseAttachmentDownloadUrl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/cases/{caseId}/get-presigned-url/{attachmentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityIR::GetCaseAttachmentDownloadUrlResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::GetCaseAttachmentDownloadUrl - Arguments for method GetCaseAttachmentDownloadUrl on L<Paws::SecurityIR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCaseAttachmentDownloadUrl on the
L<Security Incident Response|Paws::SecurityIR> service. Use the attributes of this class
as arguments to method GetCaseAttachmentDownloadUrl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCaseAttachmentDownloadUrl.

=head1 SYNOPSIS

    my $security-ir = Paws->service('SecurityIR');
    my $GetCaseAttachmentDownloadUrlResponse =
      $security -ir->GetCaseAttachmentDownloadUrl(
      AttachmentId => 'MyAttachmentId',
      CaseId       => 'MyCaseId',

      );

    # Results:
    my $AttachmentPresignedUrl =
      $GetCaseAttachmentDownloadUrlResponse->AttachmentPresignedUrl;

   # Returns a L<Paws::SecurityIR::GetCaseAttachmentDownloadUrlResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/security-ir/GetCaseAttachmentDownloadUrl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttachmentId => Str

Required element for GetCaseAttachmentDownloadUrl to identify the
attachment ID for downloading an attachment.



=head2 B<REQUIRED> CaseId => Str

Required element for GetCaseAttachmentDownloadUrl to identify the case
ID for downloading an attachment from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCaseAttachmentDownloadUrl in L<Paws::SecurityIR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

