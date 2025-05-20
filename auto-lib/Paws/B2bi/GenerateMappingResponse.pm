
package Paws::B2bi::GenerateMappingResponse;
  use Moose;
  has MappingAccuracy => (is => 'ro', isa => 'Num', traits => ['NameInRequest'], request_name => 'mappingAccuracy' );
  has MappingTemplate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mappingTemplate' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::GenerateMappingResponse

=head1 ATTRIBUTES


=head2 MappingAccuracy => Num

Returns a percentage that estimates the accuracy of the generated
mapping.


=head2 B<REQUIRED> MappingTemplate => Str

Returns a mapping template based on your inputs.


=head2 _request_id => Str


=cut

1;