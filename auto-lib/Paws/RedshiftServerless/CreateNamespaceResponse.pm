
package Paws::RedshiftServerless::CreateNamespaceResponse;
  use Moose;
  has Namespace => (is => 'ro', isa => 'Paws::RedshiftServerless::Namespace', traits => ['NameInRequest'], request_name => 'namespace' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::CreateNamespaceResponse

=head1 ATTRIBUTES


=head2 Namespace => L<Paws::RedshiftServerless::Namespace>

The created namespace object.


=head2 _request_id => Str


=cut

1;