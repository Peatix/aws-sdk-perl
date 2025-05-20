
package Paws::Inspector2::ListAccountPermissionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Permissions => (is => 'ro', isa => 'ArrayRef[Paws::Inspector2::Permission]', traits => ['NameInRequest'], request_name => 'permissions', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::ListAccountPermissionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first request
to a list action. For subsequent calls, use the C<NextToken> value
returned from the previous request to continue listing results after
the first page.


=head2 B<REQUIRED> Permissions => ArrayRef[L<Paws::Inspector2::Permission>]

Contains details on the permissions an account has to configure Amazon
Inspector.


=head2 _request_id => Str


=cut

