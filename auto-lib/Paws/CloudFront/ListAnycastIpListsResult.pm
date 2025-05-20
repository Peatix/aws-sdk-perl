
package Paws::CloudFront::ListAnycastIpListsResult;
  use Moose;
  has AnycastIpLists => (is => 'ro', isa => 'Paws::CloudFront::AnycastIpListCollection', request_name => 'AnycastIpListCollection', traits => ['NameInRequest','ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListAnycastIpListsResult

=head1 ATTRIBUTES


=head2 AnycastIpLists => L<Paws::CloudFront::AnycastIpListCollection>

Root level tag for the C<AnycastIpLists> parameters.




=cut

