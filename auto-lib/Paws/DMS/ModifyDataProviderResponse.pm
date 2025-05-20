
package Paws::DMS::ModifyDataProviderResponse;
  use Moose;
  has DataProvider => (is => 'ro', isa => 'Paws::DMS::DataProvider');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ModifyDataProviderResponse

=head1 ATTRIBUTES


=head2 DataProvider => L<Paws::DMS::DataProvider>

The data provider that was modified.


=head2 _request_id => Str


=cut

1;