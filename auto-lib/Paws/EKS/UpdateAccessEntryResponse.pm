
package Paws::EKS::UpdateAccessEntryResponse;
  use Moose;
  has AccessEntry => (is => 'ro', isa => 'Paws::EKS::AccessEntry', traits => ['NameInRequest'], request_name => 'accessEntry');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::UpdateAccessEntryResponse

=head1 ATTRIBUTES


=head2 AccessEntry => L<Paws::EKS::AccessEntry>

The ARN of the IAM principal for the C<AccessEntry>.


=head2 _request_id => Str


=cut

