
package Paws::Resiliencehub::ListAppAssessmentComplianceDriftsResponse;
  use Moose;
  has ComplianceDrifts => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::ComplianceDrift]', traits => ['NameInRequest'], request_name => 'complianceDrifts', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ListAppAssessmentComplianceDriftsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComplianceDrifts => ArrayRef[L<Paws::Resiliencehub::ComplianceDrift>]

Indicates compliance drifts (recovery time objective (RTO) and recovery
point objective (RPO)) detected for an assessed entity.


=head2 NextToken => Str

Null, or the token from a previous call to get the next set of results.


=head2 _request_id => Str


=cut

