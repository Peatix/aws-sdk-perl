
package Paws::DataZone::DeleteTimeSeriesDataPoints;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EntityIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'entityIdentifier', required => 1);
  has EntityType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'entityType', required => 1);
  has FormName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'formName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTimeSeriesDataPoints');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/time-series-data-points');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::DeleteTimeSeriesDataPointsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::DeleteTimeSeriesDataPoints - Arguments for method DeleteTimeSeriesDataPoints on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTimeSeriesDataPoints on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method DeleteTimeSeriesDataPoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTimeSeriesDataPoints.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $DeleteTimeSeriesDataPointsOutput =
      $datazone->DeleteTimeSeriesDataPoints(
      DomainIdentifier => 'MyDomainId',
      EntityIdentifier => 'MyEntityIdentifier',
      EntityType       => 'ASSET',
      FormName         => 'MyTimeSeriesFormName',
      ClientToken      => 'MyClientToken',          # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/DeleteTimeSeriesDataPoints>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier to ensure idempotency of the
request. This field is automatically populated if not provided.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain that houses the asset for which
you want to delete a time series form.



=head2 B<REQUIRED> EntityIdentifier => Str

The ID of the asset for which you want to delete a time series form.



=head2 B<REQUIRED> EntityType => Str

The type of the asset for which you want to delete a time series form.

Valid values are: C<"ASSET">, C<"LISTING">

=head2 B<REQUIRED> FormName => Str

The name of the time series form that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTimeSeriesDataPoints in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

