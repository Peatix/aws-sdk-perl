
package Paws::DirectConnect::ConfirmCustomerAgreementResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::ConfirmCustomerAgreementResponse

=head1 ATTRIBUTES


=head2 Status => Str

The status of the customer agreement when the connection was created.
This will be either C<signed> or C<unsigned>.


=head2 _request_id => Str


=cut

1;