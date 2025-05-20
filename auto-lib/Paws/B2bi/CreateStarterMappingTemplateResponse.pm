
package Paws::B2bi::CreateStarterMappingTemplateResponse;
  use Moose;
  has MappingTemplate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mappingTemplate' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::CreateStarterMappingTemplateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MappingTemplate => Str

Returns a string that represents the mapping template.


=head2 _request_id => Str


=cut

1;