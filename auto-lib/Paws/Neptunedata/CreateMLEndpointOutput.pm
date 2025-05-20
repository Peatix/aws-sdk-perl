
package Paws::Neptunedata::CreateMLEndpointOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreationTimeInMillis => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'creationTimeInMillis');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::CreateMLEndpointOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN for the new inference endpoint.


=head2 CreationTimeInMillis => Int

The endpoint creation time, in milliseconds.


=head2 Id => Str

The unique ID of the new inference endpoint.


=head2 _request_id => Str


=cut

