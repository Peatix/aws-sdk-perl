
package Paws::RAM::AssociateResourceShareResponse;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ResourceShareAssociations => (is => 'ro', isa => 'ArrayRef[Paws::RAM::ResourceShareAssociation]', traits => ['NameInRequest'], request_name => 'resourceShareAssociations');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::AssociateResourceShareResponse

=head1 ATTRIBUTES


=head2 ClientToken => Str

The idempotency identifier associated with this request. If you want to
repeat the same operation in an idempotent manner then you must include
this value in the C<clientToken> request parameter of that later call.
All other parameters must also have the same values that you used in
the first call.


=head2 ResourceShareAssociations => ArrayRef[L<Paws::RAM::ResourceShareAssociation>]

An array of objects that contain information about the associations.


=head2 _request_id => Str


=cut

