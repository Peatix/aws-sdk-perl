
package Paws::SageMaker::ListClusters;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has TrainingPlanArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListClusters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListClustersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListClusters - Arguments for method ListClusters on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListClusters on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListClusters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListClusters.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListClustersResponse = $api . sagemaker->ListClusters(
      CreationTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      CreationTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults         => 1,                        # OPTIONAL
      NameContains       => 'MyNameContains',         # OPTIONAL
      NextToken          => 'MyNextToken',            # OPTIONAL
      SortBy             => 'CREATION_TIME',          # OPTIONAL
      SortOrder          => 'Ascending',              # OPTIONAL
      TrainingPlanArn    => 'MyTrainingPlanArn',      # OPTIONAL
    );

    # Results:
    my $ClusterSummaries = $ListClustersResponse->ClusterSummaries;
    my $NextToken        = $ListClustersResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListClustersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListClusters>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

Set a start time for the time range during which you want to list
SageMaker HyperPod clusters. Timestamps are formatted according to the
ISO 8601 standard.

Acceptable formats include:

=over

=item *

C<YYYY-MM-DDThh:mm:ss.sssTZD> (UTC), for example,
C<2014-10-01T20:30:00.000Z>

=item *

C<YYYY-MM-DDThh:mm:ss.sssTZD> (with offset), for example,
C<2014-10-01T12:30:00.000-08:00>

=item *

C<YYYY-MM-DD>, for example, C<2014-10-01>

=item *

Unix time in seconds, for example, C<1412195400>. This is also referred
to as Unix Epoch time and represents the number of seconds since
midnight, January 1, 1970 UTC.

=back

For more information about the timestamp format, see Timestamp
(https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp)
in the I<Amazon Web Services Command Line Interface User Guide>.



=head2 CreationTimeBefore => Str

Set an end time for the time range during which you want to list
SageMaker HyperPod clusters. A filter that returns nodes in a SageMaker
HyperPod cluster created before the specified time. The acceptable
formats are the same as the timestamp formats for C<CreationTimeAfter>.
For more information about the timestamp format, see Timestamp
(https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp)
in the I<Amazon Web Services Command Line Interface User Guide>.



=head2 MaxResults => Int

Set the maximum number of SageMaker HyperPod clusters to list.



=head2 NameContains => Str

Set the maximum number of instances to print in the list.



=head2 NextToken => Str

Set the next token to retrieve the list of SageMaker HyperPod clusters.



=head2 SortBy => Str

The field by which to sort results. The default value is
C<CREATION_TIME>.

Valid values are: C<"CREATION_TIME">, C<"NAME">

=head2 SortOrder => Str

The sort order for results. The default value is C<Ascending>.

Valid values are: C<"Ascending">, C<"Descending">

=head2 TrainingPlanArn => Str

The Amazon Resource Name (ARN); of the training plan to filter clusters
by. For more information about reserving GPU capacity for your
SageMaker HyperPod clusters using Amazon SageMaker Training Plan, see
C< CreateTrainingPlan
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateTrainingPlan.html)
>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListClusters in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

