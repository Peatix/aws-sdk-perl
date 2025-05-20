
package Paws::DataZone::ListEntityOwners;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EntityIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'entityIdentifier', required => 1);
  has EntityType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'entityType', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEntityOwners');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/owners');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListEntityOwnersOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListEntityOwners - Arguments for method ListEntityOwners on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEntityOwners on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListEntityOwners.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEntityOwners.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListEntityOwnersOutput = $datazone->ListEntityOwners(
      DomainIdentifier => 'MyDomainId',
      EntityIdentifier => 'MyString',
      EntityType       => 'DOMAIN_UNIT',
      MaxResults       => 1,                      # OPTIONAL
      NextToken        => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListEntityOwnersOutput->NextToken;
    my $Owners    = $ListEntityOwnersOutput->Owners;

    # Returns a L<Paws::DataZone::ListEntityOwnersOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListEntityOwners>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain where you want to list entity owners.



=head2 B<REQUIRED> EntityIdentifier => Str

The ID of the entity that you want to list.



=head2 B<REQUIRED> EntityType => Str

The type of the entity that you want to list.

Valid values are: C<"DOMAIN_UNIT">

=head2 MaxResults => Int

The maximum number of entities to return in a single call to
C<ListEntityOwners>. When the number of entities to be listed is
greater than the value of C<MaxResults>, the response contains a
C<NextToken> value that you can use in a subsequent call to
C<ListEntityOwners> to list the next set of entities.



=head2 NextToken => Str

When the number of entities is greater than the default value for the
C<MaxResults> parameter, or if you explicitly specify a value for
C<MaxResults> that is less than the number of entities, the response
includes a pagination token named C<NextToken>. You can specify this
C<NextToken> value in a subsequent call to C<ListEntityOwners> to list
the next set of entities.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEntityOwners in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

