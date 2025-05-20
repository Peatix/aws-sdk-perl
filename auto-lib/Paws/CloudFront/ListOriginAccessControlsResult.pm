
package Paws::CloudFront::ListOriginAccessControlsResult;
  use Moose;
  has OriginAccessControlList => (is => 'ro', isa => 'Paws::CloudFront::OriginAccessControlList', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListOriginAccessControlsResult

=head1 ATTRIBUTES


=head2 OriginAccessControlList => L<Paws::CloudFront::OriginAccessControlList>

A list of origin access controls.




=cut

