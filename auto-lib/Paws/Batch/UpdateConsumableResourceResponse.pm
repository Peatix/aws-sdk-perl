
package Paws::Batch::UpdateConsumableResourceResponse;
  use Moose;
  has ConsumableResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'consumableResourceArn', required => 1);
  has ConsumableResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'consumableResourceName', required => 1);
  has TotalQuantity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'totalQuantity');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::UpdateConsumableResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConsumableResourceArn => Str

The Amazon Resource Name (ARN) of the consumable resource.


=head2 B<REQUIRED> ConsumableResourceName => Str

The name of the consumable resource to be updated.


=head2 TotalQuantity => Int

The total amount of the consumable resource that is available.


=head2 _request_id => Str


=cut

