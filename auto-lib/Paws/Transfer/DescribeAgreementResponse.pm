
package Paws::Transfer::DescribeAgreementResponse;
  use Moose;
  has Agreement => (is => 'ro', isa => 'Paws::Transfer::DescribedAgreement', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DescribeAgreementResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Agreement => L<Paws::Transfer::DescribedAgreement>

The details for the specified agreement, returned as a
C<DescribedAgreement> object.


=head2 _request_id => Str


=cut

1;