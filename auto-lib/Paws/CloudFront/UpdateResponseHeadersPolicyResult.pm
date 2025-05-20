
package Paws::CloudFront::UpdateResponseHeadersPolicyResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has ResponseHeadersPolicy => (is => 'ro', isa => 'Paws::CloudFront::ResponseHeadersPolicy', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateResponseHeadersPolicyResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the response headers policy.



=head2 ResponseHeadersPolicy => L<Paws::CloudFront::ResponseHeadersPolicy>

A response headers policy.




=cut

