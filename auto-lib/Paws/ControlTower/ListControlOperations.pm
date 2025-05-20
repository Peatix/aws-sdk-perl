
package Paws::ControlTower::ListControlOperations;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::ControlTower::ControlOperationFilter', traits => ['NameInRequest'], request_name => 'filter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListControlOperations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-control-operations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ControlTower::ListControlOperationsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::ListControlOperations - Arguments for method ListControlOperations on L<Paws::ControlTower>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListControlOperations on the
L<AWS Control Tower|Paws::ControlTower> service. Use the attributes of this class
as arguments to method ListControlOperations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListControlOperations.

=head1 SYNOPSIS

    my $controltower = Paws->service('ControlTower');
    my $ListControlOperationsOutput = $controltower->ListControlOperations(
      Filter => {
        ControlIdentifiers => [
          'MyControlIdentifier', ...    # min: 20, max: 2048
        ],    # min: 1, max: 1; OPTIONAL
        ControlOperationTypes => [
          'ENABLE_CONTROL',
          ... # values: ENABLE_CONTROL, DISABLE_CONTROL, UPDATE_ENABLED_CONTROL, RESET_ENABLED_CONTROL
        ],    # min: 1, max: 1; OPTIONAL
        EnabledControlIdentifiers => [
          'MyArn', ...    # min: 20, max: 2048
        ],    # min: 1, max: 1; OPTIONAL
        Statuses => [
          'SUCCEEDED', ...    # values: SUCCEEDED, FAILED, IN_PROGRESS
        ],    # min: 1, max: 1; OPTIONAL
        TargetIdentifiers => [
          'MyTargetIdentifier', ...    # min: 20, max: 2048
        ],    # min: 1, max: 1; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                                     # OPTIONAL
      NextToken  => 'MyListControlOperationsNextToken',    # OPTIONAL
    );

    # Results:
    my $ControlOperations = $ListControlOperationsOutput->ControlOperations;
    my $NextToken         = $ListControlOperationsOutput->NextToken;

    # Returns a L<Paws::ControlTower::ListControlOperationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controltower/ListControlOperations>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::ControlTower::ControlOperationFilter>

An input filter for the C<ListControlOperations> API that lets you
select the types of control operations to view.



=head2 MaxResults => Int

The maximum number of results to be shown.



=head2 NextToken => Str

A pagination token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListControlOperations in L<Paws::ControlTower>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

