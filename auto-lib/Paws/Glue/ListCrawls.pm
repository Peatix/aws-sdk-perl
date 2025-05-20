
package Paws::Glue::ListCrawls;
  use Moose;
  has CrawlerName => (is => 'ro', isa => 'Str', required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Glue::CrawlsFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCrawls');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::ListCrawlsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListCrawls - Arguments for method ListCrawls on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCrawls on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method ListCrawls.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCrawls.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $ListCrawlsResponse = $glue->ListCrawls(
      CrawlerName => 'MyNameString',
      Filters     => [
        {
          FieldName => 'CRAWL_ID'
          ,  # values: CRAWL_ID, STATE, START_TIME, END_TIME, DPU_HOUR; OPTIONAL
          FieldValue     => 'MyGenericString',    # OPTIONAL
          FilterOperator => 'GT',    # values: GT, GE, LT, LE, EQ, NE; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
    );

    # Results:
    my $Crawls    = $ListCrawlsResponse->Crawls;
    my $NextToken = $ListCrawlsResponse->NextToken;

    # Returns a L<Paws::Glue::ListCrawlsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/ListCrawls>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CrawlerName => Str

The name of the crawler whose runs you want to retrieve.



=head2 Filters => ArrayRef[L<Paws::Glue::CrawlsFilter>]

Filters the crawls by the criteria you specify in a list of
C<CrawlsFilter> objects.



=head2 MaxResults => Int

The maximum number of results to return. The default is 20, and maximum
is 100.



=head2 NextToken => Str

A continuation token, if this is a continuation call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCrawls in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

