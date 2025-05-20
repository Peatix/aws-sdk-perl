
package Paws::Omics::GetShareResponse;
  use Moose;
  has Share => (is => 'ro', isa => 'Paws::Omics::ShareDetails', traits => ['NameInRequest'], request_name => 'share');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetShareResponse

=head1 ATTRIBUTES


=head2 Share => L<Paws::Omics::ShareDetails>

A resource share details object. The object includes the status, the
resourceArn, and ownerId.


=head2 _request_id => Str


=cut

