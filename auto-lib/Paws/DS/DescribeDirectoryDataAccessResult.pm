
package Paws::DS::DescribeDirectoryDataAccessResult;
  use Moose;
  has DataAccessStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeDirectoryDataAccessResult

=head1 ATTRIBUTES


=head2 DataAccessStatus => Str

The current status of data access through the Directory Service Data
API.

Valid values are: C<"Disabled">, C<"Disabling">, C<"Enabled">, C<"Enabling">, C<"Failed">
=head2 _request_id => Str


=cut

1;