
package Paws::ResourceExplorer2::UpdateIndexTypeOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has LastUpdatedAt => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::UpdateIndexTypeOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon resource name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the index that you updated.


=head2 LastUpdatedAt => Str

The date and timestamp when the index was last updated.


=head2 State => Str

Indicates the state of the request to update the index. This operation
is asynchronous. Call the GetIndex operation to check for changes.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">, C<"DELETED">, C<"UPDATING">
=head2 Type => Str

Specifies the type of the specified index after the operation
completes.

Valid values are: C<"LOCAL">, C<"AGGREGATOR">
=head2 _request_id => Str


=cut

