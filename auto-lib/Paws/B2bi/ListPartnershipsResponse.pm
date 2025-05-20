
package Paws::B2bi::ListPartnershipsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Partnerships => (is => 'ro', isa => 'ArrayRef[Paws::B2bi::PartnershipSummary]', traits => ['NameInRequest'], request_name => 'partnerships' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::ListPartnershipsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When additional results are obtained from the command, a C<NextToken>
parameter is returned in the output. You can then pass the C<NextToken>
parameter in a subsequent command to continue listing additional
resources.


=head2 B<REQUIRED> Partnerships => ArrayRef[L<Paws::B2bi::PartnershipSummary>]

Specifies a list of your partnerships.


=head2 _request_id => Str


=cut

1;