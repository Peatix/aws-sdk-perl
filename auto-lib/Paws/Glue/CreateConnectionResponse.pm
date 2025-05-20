
package Paws::Glue::CreateConnectionResponse;
  use Moose;
  has CreateConnectionStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateConnectionResponse

=head1 ATTRIBUTES


=head2 CreateConnectionStatus => Str

The status of the connection creation request. The request can take
some time for certain authentication types, for example when creating
an OAuth connection with token exchange over VPC.

Valid values are: C<"READY">, C<"IN_PROGRESS">, C<"FAILED">
=head2 _request_id => Str


=cut

1;