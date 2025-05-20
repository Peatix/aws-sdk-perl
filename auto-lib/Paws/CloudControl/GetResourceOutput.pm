
package Paws::CloudControl::GetResourceOutput;
  use Moose;
  has ResourceDescription => (is => 'ro', isa => 'Paws::CloudControl::ResourceDescription');
  has TypeName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudControl::GetResourceOutput

=head1 ATTRIBUTES


=head2 ResourceDescription => L<Paws::CloudControl::ResourceDescription>




=head2 TypeName => Str

The name of the resource type.


=head2 _request_id => Str


=cut

1;