
package Paws::Drs::ListLaunchActions;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::Drs::LaunchActionsRequestFilters', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLaunchActions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListLaunchActions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Drs::ListLaunchActionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::ListLaunchActions - Arguments for method ListLaunchActions on L<Paws::Drs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLaunchActions on the
L<Elastic Disaster Recovery Service|Paws::Drs> service. Use the attributes of this class
as arguments to method ListLaunchActions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLaunchActions.

=head1 SYNOPSIS

    my $drs = Paws->service('Drs');
    my $ListLaunchActionsResponse = $drs->ListLaunchActions(
      ResourceId => 'MyLaunchActionResourceId',
      Filters    => {
        ActionIds => [
          'MyLaunchActionId', ...    # min: 1, max: 64
        ],    # max: 100; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListLaunchActionsResponse->Items;
    my $NextToken = $ListLaunchActionsResponse->NextToken;

    # Returns a L<Paws::Drs::ListLaunchActionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/drs/ListLaunchActions>

=head1 ATTRIBUTES


=head2 Filters => L<Paws::Drs::LaunchActionsRequestFilters>

Filters to apply when listing resource launch actions.



=head2 MaxResults => Int

Maximum amount of items to return when listing resource launch actions.



=head2 NextToken => Str

Next token to use when listing resource launch actions.



=head2 B<REQUIRED> ResourceId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLaunchActions in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

