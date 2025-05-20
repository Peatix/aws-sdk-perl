
package Paws::EMR::ListSupportedInstanceTypesOutput;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has SupportedInstanceTypes => (is => 'ro', isa => 'ArrayRef[Paws::EMR::SupportedInstanceType]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ListSupportedInstanceTypesOutput

=head1 ATTRIBUTES


=head2 Marker => Str

The pagination token that marks the next set of results to retrieve.


=head2 SupportedInstanceTypes => ArrayRef[L<Paws::EMR::SupportedInstanceType>]

The list of instance types that the release specified in
C<ListSupportedInstanceTypesInput$ReleaseLabel> supports, filtered by
Amazon Web Services Region.


=head2 _request_id => Str


=cut

1;