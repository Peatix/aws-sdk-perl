package Paws::SageMakerMetrics;
  use Moose;
  sub service { 'metrics.sagemaker' }
  sub signing_name { 'sagemaker' }
  sub version { '2022-09-30' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchGetMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerMetrics::BatchGetMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchPutMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerMetrics::BatchPutMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/BatchGetMetrics BatchPutMetrics / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerMetrics - Perl Interface to AWS Amazon SageMaker Metrics Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SageMakerMetrics');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Contains all data plane API operations and data types for Amazon
SageMaker Metrics. Use these APIs to put and retrieve (get) features
related to your training run.

=over

=item *

BatchPutMetrics
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_metrics_BatchPutMetrics.html)

=back


For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 BatchGetMetrics

=over

=item MetricQueries => ArrayRef[L<Paws::SageMakerMetrics::MetricQuery>]


=back

Each argument is described in detail in: L<Paws::SageMakerMetrics::BatchGetMetrics>

Returns: a L<Paws::SageMakerMetrics::BatchGetMetricsResponse> instance

Used to retrieve training metrics from SageMaker.


=head2 BatchPutMetrics

=over

=item MetricData => ArrayRef[L<Paws::SageMakerMetrics::RawMetricData>]

=item TrialComponentName => Str


=back

Each argument is described in detail in: L<Paws::SageMakerMetrics::BatchPutMetrics>

Returns: a L<Paws::SageMakerMetrics::BatchPutMetricsResponse> instance

Used to ingest training metrics into SageMaker. These metrics can be
visualized in SageMaker Studio.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

