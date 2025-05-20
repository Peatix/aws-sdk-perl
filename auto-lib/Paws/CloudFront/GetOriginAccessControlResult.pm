
package Paws::CloudFront::GetOriginAccessControlResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has OriginAccessControl => (is => 'ro', isa => 'Paws::CloudFront::OriginAccessControl', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetOriginAccessControlResult

=head1 ATTRIBUTES


=head2 ETag => Str

The version identifier for the current version of the origin access
control.



=head2 OriginAccessControl => L<Paws::CloudFront::OriginAccessControl>

Contains an origin access control, including its unique identifier.




=cut

