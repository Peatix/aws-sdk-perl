
package Paws::S3Control::GetMultiRegionAccessPointPolicyStatusResult;
  use Moose;
  has Established => (is => 'ro', isa => 'Paws::S3Control::PolicyStatus');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetMultiRegionAccessPointPolicyStatusResult

=head1 ATTRIBUTES


=head2 Established => L<Paws::S3Control::PolicyStatus>






=cut

