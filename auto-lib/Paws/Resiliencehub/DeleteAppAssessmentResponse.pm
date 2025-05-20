
package Paws::Resiliencehub::DeleteAppAssessmentResponse;
  use Moose;
  has AssessmentArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentArn', required => 1);
  has AssessmentStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::DeleteAppAssessmentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentArn => Str

Amazon Resource Name (ARN) of the assessment. The format for this ARN
is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app-assessment/C<app-id>.
For more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.


=head2 B<REQUIRED> AssessmentStatus => Str

The current status of the assessment for the resiliency policy.

Valid values are: C<"Pending">, C<"InProgress">, C<"Failed">, C<"Success">
=head2 _request_id => Str


=cut

