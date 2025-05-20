
package Paws::QBusiness::ListPluginsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Plugins => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::Plugin]', traits => ['NameInRequest'], request_name => 'plugins');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ListPluginsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the C<maxResults> response was incomplete because there is more data
to retrieve, Amazon Q Business returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
plugins.


=head2 Plugins => ArrayRef[L<Paws::QBusiness::Plugin>]

Information about a configured plugin.


=head2 _request_id => Str


=cut

