
package Paws::DataZone::ListDomains;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDomains');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListDomainsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListDomains - Arguments for method ListDomains on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDomains on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListDomains.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDomains.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListDomainsOutput = $datazone->ListDomains(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      Status     => 'CREATING',             # OPTIONAL
    );

    # Results:
    my $Items     = $ListDomainsOutput->Items;
    my $NextToken = $ListDomainsOutput->NextToken;

    # Returns a L<Paws::DataZone::ListDomainsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListDomains>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of domains to return in a single call to
C<ListDomains>. When the number of domains to be listed is greater than
the value of C<MaxResults>, the response contains a C<NextToken> value
that you can use in a subsequent call to C<ListDomains> to list the
next set of domains.



=head2 NextToken => Str

When the number of domains is greater than the default value for the
C<MaxResults> parameter, or if you explicitly specify a value for
C<MaxResults> that is less than the number of domains, the response
includes a pagination token named C<NextToken>. You can specify this
C<NextToken> value in a subsequent call to C<ListDomains> to list the
next set of domains.



=head2 Status => Str

The status of the data source.

Valid values are: C<"CREATING">, C<"AVAILABLE">, C<"CREATION_FAILED">, C<"DELETING">, C<"DELETED">, C<"DELETION_FAILED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDomains in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

