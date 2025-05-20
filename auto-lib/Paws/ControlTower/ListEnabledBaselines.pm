
package Paws::ControlTower::ListEnabledBaselines;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::ControlTower::EnabledBaselineFilter', traits => ['NameInRequest'], request_name => 'filter');
  has IncludeChildren => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'includeChildren');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEnabledBaselines');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-enabled-baselines');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ControlTower::ListEnabledBaselinesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::ListEnabledBaselines - Arguments for method ListEnabledBaselines on L<Paws::ControlTower>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEnabledBaselines on the
L<AWS Control Tower|Paws::ControlTower> service. Use the attributes of this class
as arguments to method ListEnabledBaselines.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEnabledBaselines.

=head1 SYNOPSIS

    my $controltower = Paws->service('ControlTower');
    my $ListEnabledBaselinesOutput = $controltower->ListEnabledBaselines(
      Filter => {
        BaselineIdentifiers => [
          'MyArn', ...    # min: 20, max: 2048
        ],    # min: 1, max: 5; OPTIONAL
        InheritanceDriftStatuses => [
          'IN_SYNC', ...    # values: IN_SYNC, DRIFTED
        ],    # min: 1, max: 1; OPTIONAL
        ParentIdentifiers => [
          'MyArn', ...    # min: 20, max: 2048
        ],    # min: 1, max: 5; OPTIONAL
        Statuses => [
          'SUCCEEDED', ...    # values: SUCCEEDED, FAILED, UNDER_CHANGE
        ],    # min: 1, max: 1; OPTIONAL
        TargetIdentifiers => [
          'MyArn', ...    # min: 20, max: 2048
        ],    # min: 1, max: 5; OPTIONAL
      },    # OPTIONAL
      IncludeChildren => 1,                                    # OPTIONAL
      MaxResults      => 1,                                    # OPTIONAL
      NextToken       => 'MyListEnabledBaselinesNextToken',    # OPTIONAL
    );

    # Results:
    my $EnabledBaselines = $ListEnabledBaselinesOutput->EnabledBaselines;
    my $NextToken        = $ListEnabledBaselinesOutput->NextToken;

    # Returns a L<Paws::ControlTower::ListEnabledBaselinesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controltower/ListEnabledBaselines>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::ControlTower::EnabledBaselineFilter>

A filter applied on the C<ListEnabledBaseline> operation. Allowed
filters are C<baselineIdentifiers> and C<targetIdentifiers>. The filter
can be applied for either, or both.



=head2 IncludeChildren => Bool

A value that can be set to include the child enabled baselines in
responses. The default value is false.



=head2 MaxResults => Int

The maximum number of results to be shown.



=head2 NextToken => Str

A pagination token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEnabledBaselines in L<Paws::ControlTower>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

