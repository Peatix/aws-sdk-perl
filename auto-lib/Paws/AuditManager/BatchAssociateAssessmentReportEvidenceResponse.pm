
package Paws::AuditManager::BatchAssociateAssessmentReportEvidenceResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::AssessmentReportEvidenceError]', traits => ['NameInRequest'], request_name => 'errors');
  has EvidenceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'evidenceIds');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::BatchAssociateAssessmentReportEvidenceResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::AuditManager::AssessmentReportEvidenceError>]

A list of errors that the C<BatchAssociateAssessmentReportEvidence> API
returned.


=head2 EvidenceIds => ArrayRef[Str|Undef]

The list of evidence identifiers.


=head2 _request_id => Str


=cut

