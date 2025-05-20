
package Paws::RolesAnywhere::ListProfiles;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has PageSize => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'pageSize');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProfiles');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RolesAnywhere::ListProfilesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RolesAnywhere::ListProfiles - Arguments for method ListProfiles on L<Paws::RolesAnywhere>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProfiles on the
L<IAM Roles Anywhere|Paws::RolesAnywhere> service. Use the attributes of this class
as arguments to method ListProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProfiles.

=head1 SYNOPSIS

    my $rolesanywhere = Paws->service('RolesAnywhere');
    my $ListProfilesResponse = $rolesanywhere->ListProfiles(
      NextToken => 'MyListRequestNextTokenString',    # OPTIONAL
      PageSize  => 1,                                 # OPTIONAL
    );

    # Results:
    my $NextToken = $ListProfilesResponse->NextToken;
    my $Profiles  = $ListProfilesResponse->Profiles;

    # Returns a L<Paws::RolesAnywhere::ListProfilesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rolesanywhere/ListProfiles>

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that indicates where the output should continue from, if a
previous request did not show all results. To get the next results,
make the request again with this value.



=head2 PageSize => Int

The number of resources in the paginated list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProfiles in L<Paws::RolesAnywhere>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

