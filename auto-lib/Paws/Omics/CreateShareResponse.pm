
package Paws::Omics::CreateShareResponse;
  use Moose;
  has ShareId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'shareId');
  has ShareName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'shareName');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::CreateShareResponse

=head1 ATTRIBUTES


=head2 ShareId => Str

The ID that HealthOmics generates for the share.


=head2 ShareName => Str

The name of the share.


=head2 Status => Str

The status of the share.

Valid values are: C<"PENDING">, C<"ACTIVATING">, C<"ACTIVE">, C<"DELETING">, C<"DELETED">, C<"FAILED">
=head2 _request_id => Str


=cut

