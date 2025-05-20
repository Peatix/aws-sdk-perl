
package Paws::EntityResolution::DeleteIdNamespaceOutput;
  use Moose;
  has Message => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'message', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::DeleteIdNamespaceOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Message => Str

A successful operation message.


=head2 _request_id => Str


=cut

