
package Paws::Macie2::ListResourceProfileDetectionsResponse;
  use Moose;
  has Detections => (is => 'ro', isa => 'ArrayRef[Paws::Macie2::Detection]', traits => ['NameInRequest'], request_name => 'detections');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::ListResourceProfileDetectionsResponse

=head1 ATTRIBUTES


=head2 Detections => ArrayRef[L<Paws::Macie2::Detection>]

An array of objects, one for each type of sensitive data that Amazon
Macie found in the bucket. Each object reports the number of
occurrences of the specified type and provides information about the
custom data identifier or managed data identifier that detected the
data.


=head2 NextToken => Str

The string to use in a subsequent request to get the next page of
results in a paginated response. This value is null if there are no
additional pages.


=head2 _request_id => Str


=cut

