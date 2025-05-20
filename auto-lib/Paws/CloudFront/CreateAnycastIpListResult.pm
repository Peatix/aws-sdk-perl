
package Paws::CloudFront::CreateAnycastIpListResult;
  use Moose;
  has AnycastIpList => (is => 'ro', isa => 'Paws::CloudFront::AnycastIpList', traits => ['ParamInBody']);
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateAnycastIpListResult

=head1 ATTRIBUTES


=head2 AnycastIpList => L<Paws::CloudFront::AnycastIpList>

A response structure that includes the version identifier (ETag) and
the created AnycastIpList structure.



=head2 ETag => Str

The version identifier for the current version of the Anycast static IP
list.




=cut

