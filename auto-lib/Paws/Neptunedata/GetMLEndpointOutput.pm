
package Paws::Neptunedata::GetMLEndpointOutput;
  use Moose;
  has Endpoint => (is => 'ro', isa => 'Paws::Neptunedata::MlResourceDefinition', traits => ['NameInRequest'], request_name => 'endpoint');
  has EndpointConfig => (is => 'ro', isa => 'Paws::Neptunedata::MlConfigDefinition', traits => ['NameInRequest'], request_name => 'endpointConfig');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::GetMLEndpointOutput

=head1 ATTRIBUTES


=head2 Endpoint => L<Paws::Neptunedata::MlResourceDefinition>

The endpoint definition.


=head2 EndpointConfig => L<Paws::Neptunedata::MlConfigDefinition>

The endpoint configuration


=head2 Id => Str

The unique identifier of the inference endpoint.


=head2 Status => Str

The status of the inference endpoint.


=head2 _request_id => Str


=cut

