
package Paws::FMS::GetResourceSetResponse;
  use Moose;
  has ResourceSet => (is => 'ro', isa => 'Paws::FMS::ResourceSet', required => 1);
  has ResourceSetArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FMS::GetResourceSetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceSet => L<Paws::FMS::ResourceSet>

Information about the specified resource set.


=head2 B<REQUIRED> ResourceSetArn => Str

The Amazon Resource Name (ARN) of the resource set.


=head2 _request_id => Str


=cut

1;