
package Paws::DataZone::ListEnvironmentProfiles;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'awsAccountId');
  has AwsAccountRegion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'awsAccountRegion');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EnvironmentBlueprintIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'environmentBlueprintIdentifier');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'name');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ProjectIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'projectIdentifier');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEnvironmentProfiles');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/environment-profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListEnvironmentProfilesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListEnvironmentProfiles - Arguments for method ListEnvironmentProfiles on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEnvironmentProfiles on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListEnvironmentProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEnvironmentProfiles.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListEnvironmentProfilesOutput = $datazone->ListEnvironmentProfiles(
      DomainIdentifier               => 'MyDomainId',
      AwsAccountId                   => 'MyAwsAccountId',             # OPTIONAL
      AwsAccountRegion               => 'MyAwsRegion',                # OPTIONAL
      EnvironmentBlueprintIdentifier => 'MyEnvironmentBlueprintId',   # OPTIONAL
      MaxResults                     => 1,                            # OPTIONAL
      Name                           => 'MyEnvironmentProfileName',   # OPTIONAL
      NextToken                      => 'MyPaginationToken',          # OPTIONAL
      ProjectIdentifier              => 'MyProjectId',                # OPTIONAL
    );

    # Results:
    my $Items     = $ListEnvironmentProfilesOutput->Items;
    my $NextToken = $ListEnvironmentProfilesOutput->NextToken;

    # Returns a L<Paws::DataZone::ListEnvironmentProfilesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListEnvironmentProfiles>

=head1 ATTRIBUTES


=head2 AwsAccountId => Str

The identifier of the Amazon Web Services account where you want to
list environment profiles.



=head2 AwsAccountRegion => Str

The Amazon Web Services region where you want to list environment
profiles.



=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain.



=head2 EnvironmentBlueprintIdentifier => Str

The identifier of the blueprint that was used to create the environment
profiles that you want to list.



=head2 MaxResults => Int

The maximum number of environment profiles to return in a single call
to C<ListEnvironmentProfiles>. When the number of environment profiles
to be listed is greater than the value of C<MaxResults>, the response
contains a C<NextToken> value that you can use in a subsequent call to
C<ListEnvironmentProfiles> to list the next set of environment
profiles.



=head2 Name => Str





=head2 NextToken => Str

When the number of environment profiles is greater than the default
value for the C<MaxResults> parameter, or if you explicitly specify a
value for C<MaxResults> that is less than the number of environment
profiles, the response includes a pagination token named C<NextToken>.
You can specify this C<NextToken> value in a subsequent call to
C<ListEnvironmentProfiles> to list the next set of environment
profiles.



=head2 ProjectIdentifier => Str

The identifier of the Amazon DataZone project.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEnvironmentProfiles in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

