
package Paws::ECRPublic::DescribeRegistriesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Registries => (is => 'ro', isa => 'ArrayRef[Paws::ECRPublic::Registry]', traits => ['NameInRequest'], request_name => 'registries' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECRPublic::DescribeRegistriesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<DescribeRepositories>
request. If the results of a C<DescribeRepositories> request exceed
C<maxResults>, you can use this value to retrieve the next page of
results. If there are no more results, this value is C<null>.


=head2 B<REQUIRED> Registries => ArrayRef[L<Paws::ECRPublic::Registry>]

An object that contains the details for a public registry.


=head2 _request_id => Str


=cut

1;