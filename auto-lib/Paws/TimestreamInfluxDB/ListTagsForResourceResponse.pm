
package Paws::TimestreamInfluxDB::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::TimestreamInfluxDB::ResponseTagMap', traits => ['NameInRequest'], request_name => 'tags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamInfluxDB::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::TimestreamInfluxDB::ResponseTagMap>

A list of tags used to categorize and track resources.


=head2 _request_id => Str


=cut

1;