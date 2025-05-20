
package Paws::IoT::GetBucketsAggregation;
  use Moose;
  has AggregationField => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'aggregationField', required => 1);
  has BucketsAggregationType => (is => 'ro', isa => 'Paws::IoT::BucketsAggregationType', traits => ['NameInRequest'], request_name => 'bucketsAggregationType', required => 1);
  has IndexName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'indexName');
  has QueryString => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryString', required => 1);
  has QueryVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketsAggregation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/indices/buckets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::GetBucketsAggregationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetBucketsAggregation - Arguments for method GetBucketsAggregation on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBucketsAggregation on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method GetBucketsAggregation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBucketsAggregation.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $GetBucketsAggregationResponse = $iot->GetBucketsAggregation(
      AggregationField       => 'MyAggregationField',
      BucketsAggregationType => {
        TermsAggregation => {
          MaxBuckets => 1,    # min: 1, max: 10000; OPTIONAL
        },    # OPTIONAL
      },
      QueryString  => 'MyQueryString',
      IndexName    => 'MyIndexName',       # OPTIONAL
      QueryVersion => 'MyQueryVersion',    # OPTIONAL
    );

    # Results:
    my $Buckets    = $GetBucketsAggregationResponse->Buckets;
    my $TotalCount = $GetBucketsAggregationResponse->TotalCount;

    # Returns a L<Paws::IoT::GetBucketsAggregationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/GetBucketsAggregation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AggregationField => Str

The aggregation field.



=head2 B<REQUIRED> BucketsAggregationType => L<Paws::IoT::BucketsAggregationType>

The basic control of the response shape and the bucket aggregation type
to perform.



=head2 IndexName => Str

The name of the index to search.



=head2 B<REQUIRED> QueryString => Str

The search query string.



=head2 QueryVersion => Str

The version of the query.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBucketsAggregation in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

