
package Paws::ResourceGroups::ListTagSyncTasks;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ResourceGroups::ListTagSyncTasksFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagSyncTasks');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-tag-sync-tasks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceGroups::ListTagSyncTasksOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::ListTagSyncTasks - Arguments for method ListTagSyncTasks on L<Paws::ResourceGroups>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagSyncTasks on the
L<AWS Resource Groups|Paws::ResourceGroups> service. Use the attributes of this class
as arguments to method ListTagSyncTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagSyncTasks.

=head1 SYNOPSIS

    my $resource-groups = Paws->service('ResourceGroups');
    my $ListTagSyncTasksOutput = $resource -groups->ListTagSyncTasks(
      Filters => [
        {
          GroupArn  => 'MyGroupArnV2',    # min: 12, max: 1600; OPTIONAL
          GroupName => 'MyGroupName',     # min: 1, max: 300; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListTagSyncTasksOutput->NextToken;
    my $TagSyncTasks = $ListTagSyncTasksOutput->TagSyncTasks;

    # Returns a L<Paws::ResourceGroups::ListTagSyncTasksOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-groups/ListTagSyncTasks>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::ResourceGroups::ListTagSyncTasksFilter>]

The Amazon resource name (ARN) or name of the application group for
which you want to return a list of tag-sync tasks.



=head2 MaxResults => Int

The maximum number of results to be included in the response.



=head2 NextToken => Str

The parameter for receiving additional results if you receive a
C<NextToken> response in a previous request. A C<NextToken> response
indicates that more output is available. Set this parameter to the
value provided by a previous call's C<NextToken> response to indicate
where the output should continue from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagSyncTasks in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

