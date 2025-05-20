
package Paws::CloudFront::GetAnycastIpListResult;
  use Moose;
  has AnycastIpList => (is => 'ro', isa => 'Paws::CloudFront::AnycastIpList', traits => ['ParamInBody']);
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetAnycastIpListResult

=head1 ATTRIBUTES


=head2 AnycastIpList => L<Paws::CloudFront::AnycastIpList>

The Anycast static IP list details.



=head2 ETag => Str

The version identifier for the current version of the Anycast static IP
list.




=cut

