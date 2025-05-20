
package Paws::Billingconductor::CreateBillingGroupOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::CreateBillingGroupOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the created billing group.


=head2 _request_id => Str


=cut

