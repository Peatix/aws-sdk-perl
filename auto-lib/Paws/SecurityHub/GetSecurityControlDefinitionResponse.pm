
package Paws::SecurityHub::GetSecurityControlDefinitionResponse;
  use Moose;
  has SecurityControlDefinition => (is => 'ro', isa => 'Paws::SecurityHub::SecurityControlDefinition', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetSecurityControlDefinitionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecurityControlDefinition => L<Paws::SecurityHub::SecurityControlDefinition>




=head2 _request_id => Str


=cut

