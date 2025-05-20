
package Paws::Batch::DescribeConsumableResourceResponse;
  use Moose;
  has AvailableQuantity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'availableQuantity');
  has ConsumableResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'consumableResourceArn', required => 1);
  has ConsumableResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'consumableResourceName', required => 1);
  has CreatedAt => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'createdAt');
  has InUseQuantity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'inUseQuantity');
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceType');
  has Tags => (is => 'ro', isa => 'Paws::Batch::TagrisTagsMap', traits => ['NameInRequest'], request_name => 'tags');
  has TotalQuantity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'totalQuantity');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::DescribeConsumableResourceResponse

=head1 ATTRIBUTES


=head2 AvailableQuantity => Int

The amount of the consumable resource that is currently available to
use.


=head2 B<REQUIRED> ConsumableResourceArn => Str

The Amazon Resource Name (ARN) of the consumable resource.


=head2 B<REQUIRED> ConsumableResourceName => Str

The name of the consumable resource.


=head2 CreatedAt => Int

The Unix timestamp (in milliseconds) for when the consumable resource
was created.


=head2 InUseQuantity => Int

The amount of the consumable resource that is currently in use.


=head2 ResourceType => Str

Indicates whether the resource is available to be re-used after a job
completes. Can be one of:

=over

=item *

C<REPLENISHABLE>

=item *

C<NON_REPLENISHABLE>

=back



=head2 Tags => L<Paws::Batch::TagrisTagsMap>

The tags that you apply to the consumable resource to help you
categorize and organize your resources. Each tag consists of a key and
an optional value. For more information, see Tagging your Batch
resources
(https://docs.aws.amazon.com/batch/latest/userguide/using-tags.html).


=head2 TotalQuantity => Int

The total amount of the consumable resource that is available.


=head2 _request_id => Str


=cut

