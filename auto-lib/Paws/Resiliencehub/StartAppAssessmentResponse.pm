
package Paws::Resiliencehub::StartAppAssessmentResponse;
  use Moose;
  has Assessment => (is => 'ro', isa => 'Paws::Resiliencehub::AppAssessment', traits => ['NameInRequest'], request_name => 'assessment', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::StartAppAssessmentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Assessment => L<Paws::Resiliencehub::AppAssessment>

The assessment created.


=head2 _request_id => Str


=cut

