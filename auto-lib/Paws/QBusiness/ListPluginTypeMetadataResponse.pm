
package Paws::QBusiness::ListPluginTypeMetadataResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::PluginTypeMetadataSummary]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ListPluginTypeMetadataResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::QBusiness::PluginTypeMetadataSummary>]

An array of information on plugin metadata.


=head2 NextToken => Str

If the response is truncated, Amazon Q Business returns this token,
which you can use in a later request to list the next set of plugin
metadata.


=head2 _request_id => Str


=cut

