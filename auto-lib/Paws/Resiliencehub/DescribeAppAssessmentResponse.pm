
package Paws::Resiliencehub::DescribeAppAssessmentResponse;
  use Moose;
  has Assessment => (is => 'ro', isa => 'Paws::Resiliencehub::AppAssessment', traits => ['NameInRequest'], request_name => 'assessment', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::DescribeAppAssessmentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Assessment => L<Paws::Resiliencehub::AppAssessment>

The assessment for an Resilience Hub application, returned as an
object. This object includes Amazon Resource Names (ARNs), compliance
information, compliance status, cost, messages, resiliency scores, and
more.


=head2 _request_id => Str


=cut

