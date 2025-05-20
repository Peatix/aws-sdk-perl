
package Paws::SecurityLake::CreateDataLakeResponse;
  use Moose;
  has DataLakes => (is => 'ro', isa => 'ArrayRef[Paws::SecurityLake::DataLakeResource]', traits => ['NameInRequest'], request_name => 'dataLakes');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::CreateDataLakeResponse

=head1 ATTRIBUTES


=head2 DataLakes => ArrayRef[L<Paws::SecurityLake::DataLakeResource>]

The created Security Lake configuration object.


=head2 _request_id => Str


=cut

