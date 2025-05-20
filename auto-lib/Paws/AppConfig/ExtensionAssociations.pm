
package Paws::AppConfig::ExtensionAssociations;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::AppConfig::ExtensionAssociationSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::ExtensionAssociations

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::AppConfig::ExtensionAssociationSummary>]

The list of extension associations. Each item represents an extension
association to an application, environment, or configuration profile.


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 _request_id => Str


=cut

