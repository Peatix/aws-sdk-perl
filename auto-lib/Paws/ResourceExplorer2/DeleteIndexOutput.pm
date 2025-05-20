
package Paws::ResourceExplorer2::DeleteIndexOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has LastUpdatedAt => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::DeleteIndexOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon resource name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the index that you successfully started the deletion process.

This operation is asynchronous. To check its status, call the GetIndex
operation.


=head2 LastUpdatedAt => Str

The date and time when you last updated this index.


=head2 State => Str

Indicates the current state of the index.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">, C<"DELETED">, C<"UPDATING">
=head2 _request_id => Str


=cut

