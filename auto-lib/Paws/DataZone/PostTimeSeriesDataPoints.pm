
package Paws::DataZone::PostTimeSeriesDataPoints;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EntityIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'entityIdentifier', required => 1);
  has EntityType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'entityType', required => 1);
  has Forms => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::TimeSeriesDataPointFormInput]', traits => ['NameInRequest'], request_name => 'forms', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PostTimeSeriesDataPoints');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/time-series-data-points');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::PostTimeSeriesDataPointsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::PostTimeSeriesDataPoints - Arguments for method PostTimeSeriesDataPoints on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PostTimeSeriesDataPoints on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method PostTimeSeriesDataPoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PostTimeSeriesDataPoints.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $PostTimeSeriesDataPointsOutput = $datazone->PostTimeSeriesDataPoints(
      DomainIdentifier => 'MyDomainId',
      EntityIdentifier => 'MyEntityIdentifier',
      EntityType       => 'ASSET',
      Forms            => [
        {
          FormName       => 'MyTimeSeriesFormName',    # min: 1, max: 128
          Timestamp      => '1970-01-01T01:00:00',
          TypeIdentifier => 'MyFormTypeIdentifier',    # min: 1, max: 385
          Content        => 'MyTimeSeriesDataPointFormInputContentString'
          ,                                # max: 500000; OPTIONAL
          TypeRevision => 'MyRevision',    # min: 1, max: 64; OPTIONAL
        },
        ...
      ],
      ClientToken => 'MyClientToken',      # OPTIONAL
    );

    # Results:
    my $DomainId   = $PostTimeSeriesDataPointsOutput->DomainId;
    my $EntityId   = $PostTimeSeriesDataPointsOutput->EntityId;
    my $EntityType = $PostTimeSeriesDataPointsOutput->EntityType;
    my $Forms      = $PostTimeSeriesDataPointsOutput->Forms;

    # Returns a L<Paws::DataZone::PostTimeSeriesDataPointsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/PostTimeSeriesDataPoints>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain in which you want to post time
series data points.



=head2 B<REQUIRED> EntityIdentifier => Str

The ID of the asset for which you want to post time series data points.



=head2 B<REQUIRED> EntityType => Str

The type of the asset for which you want to post data points.

Valid values are: C<"ASSET">, C<"LISTING">

=head2 B<REQUIRED> Forms => ArrayRef[L<Paws::DataZone::TimeSeriesDataPointFormInput>]

The forms that contain the data points that you want to post.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PostTimeSeriesDataPoints in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

