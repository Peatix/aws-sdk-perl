
package Paws::Transfer::ListWebAppsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has WebApps => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::ListedWebApp]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListWebAppsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Provide this value for the C<NextToken> parameter in a subsequent
command to continue listing additional web apps.


=head2 B<REQUIRED> WebApps => ArrayRef[L<Paws::Transfer::ListedWebApp>]

Returns, for each listed web app, a structure that contains details for
the web app.


=head2 _request_id => Str


=cut

1;