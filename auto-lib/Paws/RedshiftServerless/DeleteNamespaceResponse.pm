
package Paws::RedshiftServerless::DeleteNamespaceResponse;
  use Moose;
  has Namespace => (is => 'ro', isa => 'Paws::RedshiftServerless::Namespace', traits => ['NameInRequest'], request_name => 'namespace' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::DeleteNamespaceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Namespace => L<Paws::RedshiftServerless::Namespace>

The deleted namespace object.


=head2 _request_id => Str


=cut

1;