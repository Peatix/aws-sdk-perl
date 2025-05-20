
package Paws::RAM::EnableSharingWithAwsOrganizationResponse;
  use Moose;
  has ReturnValue => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'returnValue');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::EnableSharingWithAwsOrganizationResponse

=head1 ATTRIBUTES


=head2 ReturnValue => Bool

A return value of C<true> indicates that the request succeeded. A value
of C<false> indicates that the request failed.


=head2 _request_id => Str


=cut

