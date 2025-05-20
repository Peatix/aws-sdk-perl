
package Paws::ResourceGroups::ListGroupingStatuses;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ResourceGroups::ListGroupingStatusesFilter]');
  has Group => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGroupingStatuses');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-grouping-statuses');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceGroups::ListGroupingStatusesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::ListGroupingStatuses - Arguments for method ListGroupingStatuses on L<Paws::ResourceGroups>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGroupingStatuses on the
L<AWS Resource Groups|Paws::ResourceGroups> service. Use the attributes of this class
as arguments to method ListGroupingStatuses.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGroupingStatuses.

=head1 SYNOPSIS

    my $resource-groups = Paws->service('ResourceGroups');
    my $ListGroupingStatusesOutput = $resource -groups->ListGroupingStatuses(
      Group   => 'MyGroupStringV2',
      Filters => [
        {
          Name   => 'status',    # values: status, resource-arn
          Values => [ 'MyListGroupingStatusesFilterValue', ... ]
          ,                      # min: 1, max: 10

        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Group            = $ListGroupingStatusesOutput->Group;
    my $GroupingStatuses = $ListGroupingStatusesOutput->GroupingStatuses;
    my $NextToken        = $ListGroupingStatusesOutput->NextToken;

    # Returns a L<Paws::ResourceGroups::ListGroupingStatusesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-groups/ListGroupingStatuses>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::ResourceGroups::ListGroupingStatusesFilter>]

The filter name and value pair that is used to return more specific
results from a list of resources.



=head2 B<REQUIRED> Group => Str

The application group identifier, expressed as an Amazon resource name
(ARN) or the application group name.



=head2 MaxResults => Int

The maximum number of resources and their statuses returned in the
response.



=head2 NextToken => Str

The parameter for receiving additional results if you receive a
C<NextToken> response in a previous request. A C<NextToken> response
indicates that more output is available. Set this parameter to the
value provided by a previous call's C<NextToken> response to indicate
where the output should continue from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGroupingStatuses in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

