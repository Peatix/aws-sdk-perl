
package Paws::Macie2::ListResourceProfileArtifactsResponse;
  use Moose;
  has Artifacts => (is => 'ro', isa => 'ArrayRef[Paws::Macie2::ResourceProfileArtifact]', traits => ['NameInRequest'], request_name => 'artifacts');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::ListResourceProfileArtifactsResponse

=head1 ATTRIBUTES


=head2 Artifacts => ArrayRef[L<Paws::Macie2::ResourceProfileArtifact>]

An array of objects, one for each of 1-100 S3 objects that Amazon Macie
selected for analysis.

If Macie has analyzed more than 100 objects in the bucket, Macie
populates the array based on the value for the
ResourceProfileArtifact.sensitive field for an object: true
(sensitive), followed by false (not sensitive). Macie then populates
any remaining items in the array with information about objects where
the value for the ResourceProfileArtifact.classificationResultStatus
field is SKIPPED.


=head2 NextToken => Str

The string to use in a subsequent request to get the next page of
results in a paginated response. This value is null if there are no
additional pages.


=head2 _request_id => Str


=cut

