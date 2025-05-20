
package Paws::S3Tables::CreateNamespaceResponse;
  use Moose;
  has Namespace => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'namespace', required => 1);
  has TableBucketARN => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tableBucketARN', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::CreateNamespaceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Namespace => ArrayRef[Str|Undef]

The name of the namespace.


=head2 B<REQUIRED> TableBucketARN => Str

The Amazon Resource Name (ARN) of the table bucket the namespace was
created in.


=head2 _request_id => Str


=cut

