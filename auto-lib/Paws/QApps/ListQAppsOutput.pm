
package Paws::QApps::ListQAppsOutput;
  use Moose;
  has Apps => (is => 'ro', isa => 'ArrayRef[Paws::QApps::UserAppItem]', traits => ['NameInRequest'], request_name => 'apps', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::ListQAppsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Apps => ArrayRef[L<Paws::QApps::UserAppItem>]

The list of Amazon Q Apps meeting the request criteria.


=head2 NextToken => Str

The token to use to request the next page of results.


=head2 _request_id => Str


=cut

