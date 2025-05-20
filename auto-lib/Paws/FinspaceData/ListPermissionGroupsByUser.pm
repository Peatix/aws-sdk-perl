
package Paws::FinspaceData::ListPermissionGroupsByUser;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'userId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPermissionGroupsByUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/user/{userId}/permission-groups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FinspaceData::ListPermissionGroupsByUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::ListPermissionGroupsByUser - Arguments for method ListPermissionGroupsByUser on L<Paws::FinspaceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPermissionGroupsByUser on the
L<FinSpace Public API|Paws::FinspaceData> service. Use the attributes of this class
as arguments to method ListPermissionGroupsByUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPermissionGroupsByUser.

=head1 SYNOPSIS

    my $finspace-api = Paws->service('FinspaceData');
    my $ListPermissionGroupsByUserResponse =
      $finspace -api->ListPermissionGroupsByUser(
      MaxResults => 1,
      UserId     => 'MyUserId',
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListPermissionGroupsByUserResponse->NextToken;
    my $PermissionGroups =
      $ListPermissionGroupsByUserResponse->PermissionGroups;

   # Returns a L<Paws::FinspaceData::ListPermissionGroupsByUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace-api/ListPermissionGroupsByUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MaxResults => Int

The maximum number of results per page.



=head2 NextToken => Str

A token that indicates where a results page should begin.



=head2 B<REQUIRED> UserId => Str

The unique identifier for the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPermissionGroupsByUser in L<Paws::FinspaceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

