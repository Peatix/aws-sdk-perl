
package Paws::ResourceExplorer2::GetIndexOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has LastUpdatedAt => (is => 'ro', isa => 'Str');
  has ReplicatingFrom => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ReplicatingTo => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has State => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::ResourceExplorer2::TagMap');
  has Type => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::GetIndexOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon resource name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the index.


=head2 CreatedAt => Str

The date and time when the index was originally created.


=head2 LastUpdatedAt => Str

The date and time when the index was last updated.


=head2 ReplicatingFrom => ArrayRef[Str|Undef]

This response value is present only if this index is
C<Type=AGGREGATOR>.

A list of the Amazon Web Services Regions that replicate their content
to the index in this Region.


=head2 ReplicatingTo => ArrayRef[Str|Undef]

This response value is present only if this index is C<Type=LOCAL>.

The Amazon Web Services Region that contains the aggregator index, if
one exists. If an aggregator index does exist then the Region in which
you called this operation replicates its index information to the
Region specified in this response value.


=head2 State => Str

The current state of the index in this Amazon Web Services Region.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">, C<"DELETED">, C<"UPDATING">
=head2 Tags => L<Paws::ResourceExplorer2::TagMap>

Tag key and value pairs that are attached to the index.


=head2 Type => Str

The type of the index in this Region. For information about the
aggregator index and how it differs from a local index, see Turning on
cross-Region search by creating an aggregator index
(https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html).

Valid values are: C<"LOCAL">, C<"AGGREGATOR">
=head2 _request_id => Str


=cut

