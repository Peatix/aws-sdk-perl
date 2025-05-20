
package Paws::FinspaceData::ListPermissionGroups;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPermissionGroups');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/permission-group');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FinspaceData::ListPermissionGroupsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::ListPermissionGroups - Arguments for method ListPermissionGroups on L<Paws::FinspaceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPermissionGroups on the
L<FinSpace Public API|Paws::FinspaceData> service. Use the attributes of this class
as arguments to method ListPermissionGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPermissionGroups.

=head1 SYNOPSIS

    my $finspace-api = Paws->service('FinspaceData');
    my $ListPermissionGroupsResponse = $finspace -api->ListPermissionGroups(
      MaxResults => 1,
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken        = $ListPermissionGroupsResponse->NextToken;
    my $PermissionGroups = $ListPermissionGroupsResponse->PermissionGroups;

    # Returns a L<Paws::FinspaceData::ListPermissionGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace-api/ListPermissionGroups>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MaxResults => Int

The maximum number of results per page.



=head2 NextToken => Str

A token that indicates where a results page should begin.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPermissionGroups in L<Paws::FinspaceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

