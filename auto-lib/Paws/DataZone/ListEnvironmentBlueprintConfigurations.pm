
package Paws::DataZone::ListEnvironmentBlueprintConfigurations;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEnvironmentBlueprintConfigurations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/environment-blueprint-configurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListEnvironmentBlueprintConfigurationsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListEnvironmentBlueprintConfigurations - Arguments for method ListEnvironmentBlueprintConfigurations on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEnvironmentBlueprintConfigurations on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListEnvironmentBlueprintConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEnvironmentBlueprintConfigurations.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListEnvironmentBlueprintConfigurationsOutput =
      $datazone->ListEnvironmentBlueprintConfigurations(
      DomainIdentifier => 'MyDomainId',
      MaxResults       => 1,                      # OPTIONAL
      NextToken        => 'MyPaginationToken',    # OPTIONAL
      );

    # Results:
    my $Items     = $ListEnvironmentBlueprintConfigurationsOutput->Items;
    my $NextToken = $ListEnvironmentBlueprintConfigurationsOutput->NextToken;

# Returns a L<Paws::DataZone::ListEnvironmentBlueprintConfigurationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListEnvironmentBlueprintConfigurations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain.



=head2 MaxResults => Int

The maximum number of blueprint configurations to return in a single
call to C<ListEnvironmentBlueprintConfigurations>. When the number of
configurations to be listed is greater than the value of C<MaxResults>,
the response contains a C<NextToken> value that you can use in a
subsequent call to C<ListEnvironmentBlueprintConfigurations> to list
the next set of configurations.



=head2 NextToken => Str

When the number of blueprint configurations is greater than the default
value for the C<MaxResults> parameter, or if you explicitly specify a
value for C<MaxResults> that is less than the number of configurations,
the response includes a pagination token named C<NextToken>. You can
specify this C<NextToken> value in a subsequent call to
C<ListEnvironmentBlueprintConfigurations> to list the next set of
configurations.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEnvironmentBlueprintConfigurations in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

