
package Paws::ApplicationSignals::ListServiceLevelObjectives;
  use Moose;
  has DependencyConfig => (is => 'ro', isa => 'Paws::ApplicationSignals::DependencyConfig');
  has IncludeLinkedAccounts => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'IncludeLinkedAccounts');
  has KeyAttributes => (is => 'ro', isa => 'Paws::ApplicationSignals::Attributes');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has MetricSourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has OperationName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'OperationName');
  has SloOwnerAwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'SloOwnerAwsAccountId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListServiceLevelObjectives');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/slos');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationSignals::ListServiceLevelObjectivesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationSignals::ListServiceLevelObjectives - Arguments for method ListServiceLevelObjectives on L<Paws::ApplicationSignals>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListServiceLevelObjectives on the
L<Amazon CloudWatch Application Signals|Paws::ApplicationSignals> service. Use the attributes of this class
as arguments to method ListServiceLevelObjectives.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListServiceLevelObjectives.

=head1 SYNOPSIS

    my $application-signals = Paws->service('ApplicationSignals');
    my $ListServiceLevelObjectivesOutput =
      $application -signals->ListServiceLevelObjectives(
      DependencyConfig => {
        DependencyKeyAttributes => {
          'MyKeyAttributeName' =>
            'MyKeyAttributeValue',    # , value: min: 1, max: 1024
        },    # min: 1, max: 4
        DependencyOperationName => 'MyOperationName',    # min: 1, max: 255

      },    # OPTIONAL
      IncludeLinkedAccounts => 1,    # OPTIONAL
      KeyAttributes         => {
        'MyKeyAttributeName' =>
          'MyKeyAttributeValue',     # , value: min: 1, max: 1024
      },    # OPTIONAL
      MaxResults        => 1,    # OPTIONAL
      MetricSourceTypes => [
        'ServiceOperation',
        ...    # values: ServiceOperation, CloudWatchMetric, ServiceDependency
      ],    # OPTIONAL
      NextToken            => 'MyNextToken',        # OPTIONAL
      OperationName        => 'MyOperationName',    # OPTIONAL
      SloOwnerAwsAccountId => 'MyAwsAccountId',     # OPTIONAL
      );

    # Results:
    my $NextToken    = $ListServiceLevelObjectivesOutput->NextToken;
    my $SloSummaries = $ListServiceLevelObjectivesOutput->SloSummaries;

# Returns a L<Paws::ApplicationSignals::ListServiceLevelObjectivesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/application-signals/ListServiceLevelObjectives>

=head1 ATTRIBUTES


=head2 DependencyConfig => L<Paws::ApplicationSignals::DependencyConfig>

Identifies the dependency using the C<DependencyKeyAttributes> and
C<DependencyOperationName>.



=head2 IncludeLinkedAccounts => Bool

If you are using this operation in a monitoring account, specify
C<true> to include SLO from source accounts in the returned data.

 </p> <p>When you are monitoring an account, you can use Amazon Web Services account ID in <code>KeyAttribute</code> filter for service source account and <code>SloOwnerawsaccountID</code> for SLO source account with <code>IncludeLinkedAccounts</code> to filter the returned data to only a single source account. </p>



=head2 KeyAttributes => L<Paws::ApplicationSignals::Attributes>

You can use this optional field to specify which services you want to
retrieve SLO information for.

This is a string-to-string map. It can include the following fields.

=over

=item *

C<Type> designates the type of object this is.

=item *

C<ResourceType> specifies the type of the resource. This field is used
only when the value of the C<Type> field is C<Resource> or
C<AWS::Resource>.

=item *

C<Name> specifies the name of the object. This is used only if the
value of the C<Type> field is C<Service>, C<RemoteService>, or
C<AWS::Service>.

=item *

C<Identifier> identifies the resource objects of this resource. This is
used only if the value of the C<Type> field is C<Resource> or
C<AWS::Resource>.

=item *

C<Environment> specifies the location where this object is hosted, or
what it belongs to.

=back




=head2 MaxResults => Int

The maximum number of results to return in one operation. If you omit
this parameter, the default of 50 is used.



=head2 MetricSourceTypes => ArrayRef[Str|Undef]

Use this optional field to only include SLOs with the specified metric
source types in the output. Supported types are:

=over

=item *

Service operation

=item *

Service dependency

=item *

CloudWatch metric

=back




=head2 NextToken => Str

Include this value, if it was returned by the previous operation, to
get the next set of service level objectives.



=head2 OperationName => Str

The name of the operation that this SLO is associated with.



=head2 SloOwnerAwsAccountId => Str

SLO's Amazon Web Services account ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListServiceLevelObjectives in L<Paws::ApplicationSignals>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

