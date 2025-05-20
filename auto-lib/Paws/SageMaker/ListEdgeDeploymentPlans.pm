
package Paws::SageMaker::ListEdgeDeploymentPlans;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has DeviceFleetNameContains => (is => 'ro', isa => 'Str');
  has LastModifiedTimeAfter => (is => 'ro', isa => 'Str');
  has LastModifiedTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEdgeDeploymentPlans');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListEdgeDeploymentPlansResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListEdgeDeploymentPlans - Arguments for method ListEdgeDeploymentPlans on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEdgeDeploymentPlans on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListEdgeDeploymentPlans.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEdgeDeploymentPlans.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListEdgeDeploymentPlansResponse =
      $api . sagemaker->ListEdgeDeploymentPlans(
      CreationTimeAfter       => '1970-01-01T01:00:00',    # OPTIONAL
      CreationTimeBefore      => '1970-01-01T01:00:00',    # OPTIONAL
      DeviceFleetNameContains => 'MyNameContains',         # OPTIONAL
      LastModifiedTimeAfter   => '1970-01-01T01:00:00',    # OPTIONAL
      LastModifiedTimeBefore  => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults              => 1,                        # OPTIONAL
      NameContains            => 'MyNameContains',         # OPTIONAL
      NextToken               => 'MyNextToken',            # OPTIONAL
      SortBy                  => 'NAME',                   # OPTIONAL
      SortOrder               => 'Ascending',              # OPTIONAL
      );

    # Results:
    my $EdgeDeploymentPlanSummaries =
      $ListEdgeDeploymentPlansResponse->EdgeDeploymentPlanSummaries;
    my $NextToken = $ListEdgeDeploymentPlansResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListEdgeDeploymentPlansResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListEdgeDeploymentPlans>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

Selects edge deployment plans created after this time.



=head2 CreationTimeBefore => Str

Selects edge deployment plans created before this time.



=head2 DeviceFleetNameContains => Str

Selects edge deployment plans with a device fleet name containing this
name.



=head2 LastModifiedTimeAfter => Str

Selects edge deployment plans that were last updated after this time.



=head2 LastModifiedTimeBefore => Str

Selects edge deployment plans that were last updated before this time.



=head2 MaxResults => Int

The maximum number of results to select (50 by default).



=head2 NameContains => Str

Selects edge deployment plans with names containing this name.



=head2 NextToken => Str

The response from the last list when returning a list large enough to
need tokening.



=head2 SortBy => Str

The column by which to sort the edge deployment plans. Can be one of
C<NAME>, C<DEVICEFLEETNAME>, C<CREATIONTIME>, C<LASTMODIFIEDTIME>.

Valid values are: C<"NAME">, C<"DEVICE_FLEET_NAME">, C<"CREATION_TIME">, C<"LAST_MODIFIED_TIME">

=head2 SortOrder => Str

The direction of the sorting (ascending or descending).

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEdgeDeploymentPlans in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

