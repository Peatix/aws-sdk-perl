
package Paws::Glue::BatchPutDataQualityStatisticAnnotationResponse;
  use Moose;
  has FailedInclusionAnnotations => (is => 'ro', isa => 'ArrayRef[Paws::Glue::AnnotationError]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchPutDataQualityStatisticAnnotationResponse

=head1 ATTRIBUTES


=head2 FailedInclusionAnnotations => ArrayRef[L<Paws::Glue::AnnotationError>]

A list of C<AnnotationError>'s.


=head2 _request_id => Str


=cut

1;