
package Paws::FinspaceData::ListUsersByPermissionGroup;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has PermissionGroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'permissionGroupId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListUsersByPermissionGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/permission-group/{permissionGroupId}/users');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FinspaceData::ListUsersByPermissionGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::ListUsersByPermissionGroup - Arguments for method ListUsersByPermissionGroup on L<Paws::FinspaceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListUsersByPermissionGroup on the
L<FinSpace Public API|Paws::FinspaceData> service. Use the attributes of this class
as arguments to method ListUsersByPermissionGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListUsersByPermissionGroup.

=head1 SYNOPSIS

    my $finspace-api = Paws->service('FinspaceData');
    my $ListUsersByPermissionGroupResponse =
      $finspace -api->ListUsersByPermissionGroup(
      MaxResults        => 1,
      PermissionGroupId => 'MyPermissionGroupId',
      NextToken         => 'MyPaginationToken',     # OPTIONAL
      );

    # Results:
    my $NextToken = $ListUsersByPermissionGroupResponse->NextToken;
    my $Users     = $ListUsersByPermissionGroupResponse->Users;

   # Returns a L<Paws::FinspaceData::ListUsersByPermissionGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace-api/ListUsersByPermissionGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MaxResults => Int

The maximum number of results per page.



=head2 NextToken => Str

A token that indicates where a results page should begin.



=head2 B<REQUIRED> PermissionGroupId => Str

The unique identifier for the permission group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListUsersByPermissionGroup in L<Paws::FinspaceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

