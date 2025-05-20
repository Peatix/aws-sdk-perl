
package Paws::ApplicationMigration::ListSourceServerActions;
  use Moose;
  has AccountID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accountID');
  has Filters => (is => 'ro', isa => 'Paws::ApplicationMigration::SourceServerActionsRequestFilters', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SourceServerID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceServerID', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSourceServerActions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListSourceServerActions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::ListSourceServerActionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::ListSourceServerActions - Arguments for method ListSourceServerActions on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSourceServerActions on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method ListSourceServerActions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSourceServerActions.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $ListSourceServerActionsResponse = $mgn->ListSourceServerActions(
      SourceServerID => 'MySourceServerID',
      AccountID      => 'MyAccountID',        # OPTIONAL
      Filters        => {
        ActionIDs => [
          'MyActionID', ...                   # min: 1, max: 64
        ],    # max: 100; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListSourceServerActionsResponse->Items;
    my $NextToken = $ListSourceServerActionsResponse->NextToken;

# Returns a L<Paws::ApplicationMigration::ListSourceServerActionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/ListSourceServerActions>

=head1 ATTRIBUTES


=head2 AccountID => Str

Account ID to return when listing source server post migration custom
actions.



=head2 Filters => L<Paws::ApplicationMigration::SourceServerActionsRequestFilters>

Filters to apply when listing source server post migration custom
actions.



=head2 MaxResults => Int

Maximum amount of items to return when listing source server post
migration custom actions.



=head2 NextToken => Str

Next token to use when listing source server post migration custom
actions.



=head2 B<REQUIRED> SourceServerID => Str

Source server ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSourceServerActions in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

