
package Paws::LakeFormation::GetWorkUnitResultsResponse;
  use Moose;
  has ResultStream => (is => 'ro', isa => 'Str');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ResultStream');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::GetWorkUnitResultsResponse

=head1 ATTRIBUTES


=head2 ResultStream => Str

Rows returned from the C<GetWorkUnitResults> operation as a stream of
Apache Arrow v1.0 messages.


=head2 _request_id => Str


=cut

