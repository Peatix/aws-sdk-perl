
package Paws::SecurityHub::ListSecurityControlDefinitionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SecurityControlDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::SecurityControlDefinition]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ListSecurityControlDefinitionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination parameter that's included in the response only if it was
included in the request.


=head2 B<REQUIRED> SecurityControlDefinitions => ArrayRef[L<Paws::SecurityHub::SecurityControlDefinition>]

An array of controls that apply to the specified standard.


=head2 _request_id => Str


=cut

