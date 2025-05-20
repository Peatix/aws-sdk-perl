
package Paws::AppConfig::Extensions;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::AppConfig::ExtensionSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::Extensions

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::AppConfig::ExtensionSummary>]

The list of available extensions. The list includes Amazon Web Services
authored and user-created extensions.


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 _request_id => Str


=cut

