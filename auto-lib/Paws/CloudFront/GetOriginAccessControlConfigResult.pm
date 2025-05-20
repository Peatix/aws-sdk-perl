
package Paws::CloudFront::GetOriginAccessControlConfigResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has OriginAccessControlConfig => (is => 'ro', isa => 'Paws::CloudFront::OriginAccessControlConfig', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetOriginAccessControlConfigResult

=head1 ATTRIBUTES


=head2 ETag => Str

The version identifier for the current version of the origin access
control.



=head2 OriginAccessControlConfig => L<Paws::CloudFront::OriginAccessControlConfig>

Contains an origin access control configuration.




=cut

