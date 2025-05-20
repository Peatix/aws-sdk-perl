
package Paws::EC2::DisableImageDeregistrationProtectionResult;
  use Moose;
  has Return => (is => 'ro', isa => 'Str', request_name => 'return', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisableImageDeregistrationProtectionResult

=head1 ATTRIBUTES


=head2 Return => Str

Returns C<true> if the request succeeds; otherwise, it returns an
error.


=head2 _request_id => Str


=cut

