
package Paws::Batch::CreateConsumableResourceResponse;
  use Moose;
  has ConsumableResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'consumableResourceArn', required => 1);
  has ConsumableResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'consumableResourceName', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::CreateConsumableResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConsumableResourceArn => Str

The Amazon Resource Name (ARN) of the consumable resource.


=head2 B<REQUIRED> ConsumableResourceName => Str

The name of the consumable resource.


=head2 _request_id => Str


=cut

