
package Paws::CloudFront::DeleteVpcOriginResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has VpcOrigin => (is => 'ro', isa => 'Paws::CloudFront::VpcOrigin', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::DeleteVpcOriginResult

=head1 ATTRIBUTES


=head2 ETag => Str

The VPC origin ETag.



=head2 VpcOrigin => L<Paws::CloudFront::VpcOrigin>

The VPC origin.




=cut

