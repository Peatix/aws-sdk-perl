
package Paws::CloudFront::GetResponseHeadersPolicyConfigResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has ResponseHeadersPolicyConfig => (is => 'ro', isa => 'Paws::CloudFront::ResponseHeadersPolicyConfig', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetResponseHeadersPolicyConfigResult

=head1 ATTRIBUTES


=head2 ETag => Str

The version identifier for the current version of the response headers
policy.



=head2 ResponseHeadersPolicyConfig => L<Paws::CloudFront::ResponseHeadersPolicyConfig>

Contains a response headers policy.




=cut

