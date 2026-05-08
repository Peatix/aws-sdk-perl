
package Paws::ES::DescribeDomainChangeProgressResponse;
  use Moose;
  has ChangeProgressStatus => (is => 'ro', isa => 'Paws::ES::ChangeProgressStatusDetails');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DescribeDomainChangeProgressResponse

=head1 ATTRIBUTES


=head2 ChangeProgressStatus => L<Paws::ES::ChangeProgressStatusDetails>

Progress information for the configuration change that is requested in
the C<DescribeDomainChangeProgress> request.


=head2 _request_id => Str


=cut

