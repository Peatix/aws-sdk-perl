
package Paws::CloudFront::ListResponseHeadersPoliciesResult;
  use Moose;
  has ResponseHeadersPolicyList => (is => 'ro', isa => 'Paws::CloudFront::ResponseHeadersPolicyList', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListResponseHeadersPoliciesResult

=head1 ATTRIBUTES


=head2 ResponseHeadersPolicyList => L<Paws::CloudFront::ResponseHeadersPolicyList>

A list of response headers policies.




=cut

