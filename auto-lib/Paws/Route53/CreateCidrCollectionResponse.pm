
package Paws::Route53::CreateCidrCollectionResponse;
  use Moose;
  has Collection => (is => 'ro', isa => 'Paws::Route53::CidrCollection');
  has Location => (is => 'ro', isa => 'Str', header_name => 'Location', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateCidrCollectionResponse

=head1 ATTRIBUTES


=head2 Collection => L<Paws::Route53::CidrCollection>

A complex type that contains information about the CIDR collection.



=head2 Location => Str

A unique URL that represents the location for the CIDR collection.




=cut

