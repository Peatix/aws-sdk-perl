
package Paws::ControlTower::ListEnabledControls;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::ControlTower::EnabledControlFilter', traits => ['NameInRequest'], request_name => 'filter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TargetIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetIdentifier');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEnabledControls');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-enabled-controls');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ControlTower::ListEnabledControlsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::ListEnabledControls - Arguments for method ListEnabledControls on L<Paws::ControlTower>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEnabledControls on the
L<AWS Control Tower|Paws::ControlTower> service. Use the attributes of this class
as arguments to method ListEnabledControls.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEnabledControls.

=head1 SYNOPSIS

    my $controltower = Paws->service('ControlTower');
    my $ListEnabledControlsOutput = $controltower->ListEnabledControls(
      Filter => {
        ControlIdentifiers => [
          'MyControlIdentifier', ...    # min: 20, max: 2048
        ],    # min: 1, max: 1; OPTIONAL
        DriftStatuses => [
          'DRIFTED', ...    # values: DRIFTED, IN_SYNC, NOT_CHECKING, UNKNOWN
        ],    # min: 1, max: 1; OPTIONAL
        Statuses => [
          'SUCCEEDED', ...    # values: SUCCEEDED, FAILED, UNDER_CHANGE
        ],    # min: 1, max: 1; OPTIONAL
      },    # OPTIONAL
      MaxResults       => 1,                       # OPTIONAL
      NextToken        => 'MyString',              # OPTIONAL
      TargetIdentifier => 'MyTargetIdentifier',    # OPTIONAL
    );

    # Results:
    my $EnabledControls = $ListEnabledControlsOutput->EnabledControls;
    my $NextToken       = $ListEnabledControlsOutput->NextToken;

    # Returns a L<Paws::ControlTower::ListEnabledControlsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controltower/ListEnabledControls>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::ControlTower::EnabledControlFilter>

An input filter for the C<ListEnabledControls> API that lets you select
the types of control operations to view.



=head2 MaxResults => Int

How many results to return per API call.



=head2 NextToken => Str

The token to continue the list from a previous API call with the same
parameters.



=head2 TargetIdentifier => Str

The ARN of the organizational unit. For information on how to find the
C<targetIdentifier>, see the overview page
(https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEnabledControls in L<Paws::ControlTower>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

