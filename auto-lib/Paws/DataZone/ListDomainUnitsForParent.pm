
package Paws::DataZone::ListDomainUnitsForParent;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ParentDomainUnitIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'parentDomainUnitIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDomainUnitsForParent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/domain-units');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListDomainUnitsForParentOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListDomainUnitsForParent - Arguments for method ListDomainUnitsForParent on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDomainUnitsForParent on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListDomainUnitsForParent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDomainUnitsForParent.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListDomainUnitsForParentOutput = $datazone->ListDomainUnitsForParent(
      DomainIdentifier           => 'MyDomainId',
      ParentDomainUnitIdentifier => 'MyDomainUnitId',
      MaxResults                 => 1,                      # OPTIONAL
      NextToken                  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListDomainUnitsForParentOutput->Items;
    my $NextToken = $ListDomainUnitsForParentOutput->NextToken;

    # Returns a L<Paws::DataZone::ListDomainUnitsForParentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListDomainUnitsForParent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain in which you want to list domain units for a
parent domain unit.



=head2 MaxResults => Int

The maximum number of domain units to return in a single call to
ListDomainUnitsForParent. When the number of domain units to be listed
is greater than the value of MaxResults, the response contains a
NextToken value that you can use in a subsequent call to
ListDomainUnitsForParent to list the next set of domain units.



=head2 NextToken => Str

When the number of domain units is greater than the default value for
the MaxResults parameter, or if you explicitly specify a value for
MaxResults that is less than the number of domain units, the response
includes a pagination token named NextToken. You can specify this
NextToken value in a subsequent call to ListDomainUnitsForParent to
list the next set of domain units.



=head2 B<REQUIRED> ParentDomainUnitIdentifier => Str

The ID of the parent domain unit.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDomainUnitsForParent in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

