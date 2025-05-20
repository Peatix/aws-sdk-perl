
package Paws::FinspaceData::DeletePermissionGroup;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has PermissionGroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'permissionGroupId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePermissionGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/permission-group/{permissionGroupId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FinspaceData::DeletePermissionGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::DeletePermissionGroup - Arguments for method DeletePermissionGroup on L<Paws::FinspaceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePermissionGroup on the
L<FinSpace Public API|Paws::FinspaceData> service. Use the attributes of this class
as arguments to method DeletePermissionGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePermissionGroup.

=head1 SYNOPSIS

    my $finspace-api = Paws->service('FinspaceData');
    my $DeletePermissionGroupResponse = $finspace -api->DeletePermissionGroup(
      PermissionGroupId => 'MyPermissionGroupId',
      ClientToken       => 'MyClientToken',         # OPTIONAL
    );

    # Results:
    my $PermissionGroupId = $DeletePermissionGroupResponse->PermissionGroupId;

    # Returns a L<Paws::FinspaceData::DeletePermissionGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace-api/DeletePermissionGroup>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token that ensures idempotency. This token expires in 10 minutes.



=head2 B<REQUIRED> PermissionGroupId => Str

The unique identifier for the permission group that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePermissionGroup in L<Paws::FinspaceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

