
package Paws::CloudFront::AssociateDistributionTenantWebACLResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has Id => (is => 'ro', isa => 'Str');
  has WebACLArn => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::AssociateDistributionTenantWebACLResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the distribution tenant.



=head2 Id => Str

The ID of the distribution tenant.



=head2 WebACLArn => Str

The ARN of the WAF web ACL that you associated with the distribution
tenant.




=cut

