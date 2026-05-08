
package Paws::OpenSearch::DescribePackages;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::DescribePackagesFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePackages');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/packages/describe');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::DescribePackagesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DescribePackages - Arguments for method DescribePackages on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePackages on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method DescribePackages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePackages.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $DescribePackagesResponse = $es->DescribePackages(
      Filters => [
        {
          Name => 'PackageID'
          , # values: PackageID, PackageName, PackageStatus, PackageType, EngineVersion, PackageOwner; OPTIONAL
          Value => [ 'MyDescribePackagesFilterValue', ... ],  # min: 1; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken          = $DescribePackagesResponse->NextToken;
    my $PackageDetailsList = $DescribePackagesResponse->PackageDetailsList;

    # Returns a L<Paws::OpenSearch::DescribePackagesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::OpenSearch::DescribePackagesFilter>]

Only returns packages that match the C<DescribePackagesFilterList>
values.



=head2 MaxResults => Int

An optional parameter that specifies the maximum number of results to
return. You can use C<nextToken> to get the next page of results.



=head2 NextToken => Str

If your initial C<DescribePackageFilters> operation returns a
C<nextToken>, you can include the returned C<nextToken> in subsequent
C<DescribePackageFilters> operations, which returns results in the next
page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePackages in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

