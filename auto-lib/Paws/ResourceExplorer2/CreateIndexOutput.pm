
package Paws::ResourceExplorer2::CreateIndexOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::CreateIndexOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the new local index for the Region. You can reference this
ARN in IAM permission policies to authorize the following operations:
DeleteIndex | GetIndex | UpdateIndexType | CreateView


=head2 CreatedAt => Str

The date and timestamp when the index was created.


=head2 State => Str

Indicates the current state of the index. You can check for changes to
the state for asynchronous operations by calling the GetIndex
operation.

The state can remain in the C<CREATING> or C<UPDATING> state for
several hours as Resource Explorer discovers the information about your
resources and populates the index.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">, C<"DELETED">, C<"UPDATING">
=head2 _request_id => Str


=cut

