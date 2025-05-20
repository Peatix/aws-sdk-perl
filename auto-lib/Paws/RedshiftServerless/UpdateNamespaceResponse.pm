
package Paws::RedshiftServerless::UpdateNamespaceResponse;
  use Moose;
  has Namespace => (is => 'ro', isa => 'Paws::RedshiftServerless::Namespace', traits => ['NameInRequest'], request_name => 'namespace' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::UpdateNamespaceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Namespace => L<Paws::RedshiftServerless::Namespace>

A list of tag instances.


=head2 _request_id => Str


=cut

1;