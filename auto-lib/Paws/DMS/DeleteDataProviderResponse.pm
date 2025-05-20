
package Paws::DMS::DeleteDataProviderResponse;
  use Moose;
  has DataProvider => (is => 'ro', isa => 'Paws::DMS::DataProvider');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DeleteDataProviderResponse

=head1 ATTRIBUTES


=head2 DataProvider => L<Paws::DMS::DataProvider>

The data provider that was deleted.


=head2 _request_id => Str


=cut

1;