
package Paws::DataZone::ListEnvironmentBlueprints;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Managed => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'managed');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'name');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEnvironmentBlueprints');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/environment-blueprints');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListEnvironmentBlueprintsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListEnvironmentBlueprints - Arguments for method ListEnvironmentBlueprints on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEnvironmentBlueprints on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListEnvironmentBlueprints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEnvironmentBlueprints.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListEnvironmentBlueprintsOutput = $datazone->ListEnvironmentBlueprints(
      DomainIdentifier => 'MyDomainId',
      Managed          => 1,                               # OPTIONAL
      MaxResults       => 1,                               # OPTIONAL
      Name             => 'MyEnvironmentBlueprintName',    # OPTIONAL
      NextToken        => 'MyPaginationToken',             # OPTIONAL
    );

    # Results:
    my $Items     = $ListEnvironmentBlueprintsOutput->Items;
    my $NextToken = $ListEnvironmentBlueprintsOutput->NextToken;

    # Returns a L<Paws::DataZone::ListEnvironmentBlueprintsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListEnvironmentBlueprints>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain.



=head2 Managed => Bool

Specifies whether the environment blueprint is managed by Amazon
DataZone.



=head2 MaxResults => Int

The maximum number of blueprints to return in a single call to
C<ListEnvironmentBlueprints>. When the number of blueprints to be
listed is greater than the value of C<MaxResults>, the response
contains a C<NextToken> value that you can use in a subsequent call to
C<ListEnvironmentBlueprints> to list the next set of blueprints.



=head2 Name => Str

The name of the Amazon DataZone environment.



=head2 NextToken => Str

When the number of blueprints in the environment is greater than the
default value for the C<MaxResults> parameter, or if you explicitly
specify a value for C<MaxResults> that is less than the number of
blueprints in the environment, the response includes a pagination token
named C<NextToken>. You can specify this C<NextToken> value in a
subsequent call to C<ListEnvironmentBlueprints>to list the next set of
blueprints.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEnvironmentBlueprints in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

