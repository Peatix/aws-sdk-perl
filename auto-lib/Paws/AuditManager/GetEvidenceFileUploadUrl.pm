
package Paws::AuditManager::GetEvidenceFileUploadUrl;
  use Moose;
  has FileName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'fileName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEvidenceFileUploadUrl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/evidenceFileUploadUrl');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::GetEvidenceFileUploadUrlResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::GetEvidenceFileUploadUrl - Arguments for method GetEvidenceFileUploadUrl on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEvidenceFileUploadUrl on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method GetEvidenceFileUploadUrl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEvidenceFileUploadUrl.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $GetEvidenceFileUploadUrlResponse =
      $auditmanager->GetEvidenceFileUploadUrl(
      FileName => 'MyManualEvidenceLocalFileName',

      );

    # Results:
    my $EvidenceFileName = $GetEvidenceFileUploadUrlResponse->EvidenceFileName;
    my $UploadUrl        = $GetEvidenceFileUploadUrlResponse->UploadUrl;

    # Returns a L<Paws::AuditManager::GetEvidenceFileUploadUrlResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/GetEvidenceFileUploadUrl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileName => Str

The file that you want to upload. For a list of supported file formats,
see Supported file types for manual evidence
(https://docs.aws.amazon.com/audit-manager/latest/userguide/upload-evidence.html#supported-manual-evidence-files)
in the I<Audit Manager User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEvidenceFileUploadUrl in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

