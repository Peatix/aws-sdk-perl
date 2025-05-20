
package Paws::Glue::ListBlueprintsResponse;
  use Moose;
  has Blueprints => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListBlueprintsResponse

=head1 ATTRIBUTES


=head2 Blueprints => ArrayRef[Str|Undef]

List of names of blueprints in the account.


=head2 NextToken => Str

A continuation token, if not all blueprint names have been returned.


=head2 _request_id => Str


=cut

1;