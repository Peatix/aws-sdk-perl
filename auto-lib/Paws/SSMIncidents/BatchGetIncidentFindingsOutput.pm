
package Paws::SSMIncidents::BatchGetIncidentFindingsOutput;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::SSMIncidents::BatchGetIncidentFindingsError]', traits => ['NameInRequest'], request_name => 'errors', required => 1);
  has Findings => (is => 'ro', isa => 'ArrayRef[Paws::SSMIncidents::Finding]', traits => ['NameInRequest'], request_name => 'findings', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::BatchGetIncidentFindingsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::SSMIncidents::BatchGetIncidentFindingsError>]

A list of errors encountered during the operation.


=head2 B<REQUIRED> Findings => ArrayRef[L<Paws::SSMIncidents::Finding>]

Information about the requested findings.


=head2 _request_id => Str


=cut

