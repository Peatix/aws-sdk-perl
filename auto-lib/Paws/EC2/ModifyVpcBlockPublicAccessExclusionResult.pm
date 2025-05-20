
package Paws::EC2::ModifyVpcBlockPublicAccessExclusionResult;
  use Moose;
  has VpcBlockPublicAccessExclusion => (is => 'ro', isa => 'Paws::EC2::VpcBlockPublicAccessExclusion', request_name => 'vpcBlockPublicAccessExclusion', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVpcBlockPublicAccessExclusionResult

=head1 ATTRIBUTES


=head2 VpcBlockPublicAccessExclusion => L<Paws::EC2::VpcBlockPublicAccessExclusion>

Details related to the exclusion.


=head2 _request_id => Str


=cut

