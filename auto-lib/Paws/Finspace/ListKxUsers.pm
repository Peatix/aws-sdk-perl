
package Paws::Finspace::ListKxUsers;
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListKxUsers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments/{environmentId}/users');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::ListKxUsersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::ListKxUsers - Arguments for method ListKxUsers on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListKxUsers on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method ListKxUsers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListKxUsers.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $ListKxUsersResponse = $finspace->ListKxUsers(
      EnvironmentId => 'MyIdType',
      MaxResults    => 1,                      # OPTIONAL
      NextToken     => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListKxUsersResponse->NextToken;
    my $Users     = $ListKxUsersResponse->Users;

    # Returns a L<Paws::Finspace::ListKxUsersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/ListKxUsers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnvironmentId => Str

A unique identifier for the kdb environment.



=head2 MaxResults => Int

The maximum number of results to return in this request.



=head2 NextToken => Str

A token that indicates where a results page should begin.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListKxUsers in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

