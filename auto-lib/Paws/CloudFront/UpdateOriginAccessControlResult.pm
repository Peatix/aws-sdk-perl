
package Paws::CloudFront::UpdateOriginAccessControlResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has OriginAccessControl => (is => 'ro', isa => 'Paws::CloudFront::OriginAccessControl', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateOriginAccessControlResult

=head1 ATTRIBUTES


=head2 ETag => Str

The new version of the origin access control after it has been updated.



=head2 OriginAccessControl => L<Paws::CloudFront::OriginAccessControl>

The origin access control after it has been updated.




=cut

