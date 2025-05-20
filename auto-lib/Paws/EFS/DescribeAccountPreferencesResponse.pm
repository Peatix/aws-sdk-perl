
package Paws::EFS::DescribeAccountPreferencesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceIdPreference => (is => 'ro', isa => 'Paws::EFS::ResourceIdPreference');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::DescribeAccountPreferencesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Present if there are more records than returned in the response. You
can use the C<NextToken> in the subsequent request to fetch the
additional descriptions.


=head2 ResourceIdPreference => L<Paws::EFS::ResourceIdPreference>

Describes the resource ID preference setting for the Amazon Web
Services account associated with the user making the request, in the
current Amazon Web Services Region.


=head2 _request_id => Str


=cut

