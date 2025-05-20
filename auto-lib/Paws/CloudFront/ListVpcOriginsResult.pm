
package Paws::CloudFront::ListVpcOriginsResult;
  use Moose;
  has VpcOriginList => (is => 'ro', isa => 'Paws::CloudFront::VpcOriginList', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListVpcOriginsResult

=head1 ATTRIBUTES


=head2 VpcOriginList => L<Paws::CloudFront::VpcOriginList>

List of VPC origins.




=cut

