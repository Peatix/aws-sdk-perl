
package Paws::LookoutEquipment::ListModelVersionsResponse;
  use Moose;
  has ModelVersionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LookoutEquipment::ModelVersionSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ListModelVersionsResponse

=head1 ATTRIBUTES


=head2 ModelVersionSummaries => ArrayRef[L<Paws::LookoutEquipment::ModelVersionSummary>]

Provides information on the specified model version, including the
created time, model and dataset ARNs, and status.

If you don't supply the C<ModelName> request parameter, or if you
supply the name of a model that doesn't exist, C<ListModelVersions>
returns an empty array in C<ModelVersionSummaries>.


=head2 NextToken => Str

If the total number of results exceeds the limit that the response can
display, the response returns an opaque pagination token indicating
where to continue the listing of machine learning model versions. Use
this token in the C<NextToken> field in the request to list the next
page of results.


=head2 _request_id => Str


=cut

1;