
package Paws::EKS::ListAddonsResponse;
  use Moose;
  has Addons => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'addons');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::ListAddonsResponse

=head1 ATTRIBUTES


=head2 Addons => ArrayRef[Str|Undef]

A list of installed add-ons.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListAddons> request.
When the results of a C<ListAddons> request exceed C<maxResults>, you
can use this value to retrieve the next page of results. This value is
C<null> when there are no more results to return.

This token should be treated as an opaque identifier that is used only
to retrieve the next items in a list and not for other programmatic
purposes.


=head2 _request_id => Str


=cut

