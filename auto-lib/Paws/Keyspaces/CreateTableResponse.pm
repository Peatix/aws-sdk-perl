
package Paws::Keyspaces::CreateTableResponse;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Keyspaces::CreateTableResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The unique identifier of the table in the format of an Amazon Resource
Name (ARN).


=head2 _request_id => Str


=cut

1;