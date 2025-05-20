
package Paws::CodeStarConnections::ListRepositorySyncDefinitions;
  use Moose;
  has RepositoryLinkId => (is => 'ro', isa => 'Str', required => 1);
  has SyncType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRepositorySyncDefinitions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStarConnections::ListRepositorySyncDefinitionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::ListRepositorySyncDefinitions - Arguments for method ListRepositorySyncDefinitions on L<Paws::CodeStarConnections>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRepositorySyncDefinitions on the
L<AWS CodeStar connections|Paws::CodeStarConnections> service. Use the attributes of this class
as arguments to method ListRepositorySyncDefinitions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRepositorySyncDefinitions.

=head1 SYNOPSIS

    my $codestar-connections = Paws->service('CodeStarConnections');
    my $ListRepositorySyncDefinitionsOutput =
      $codestar -connections->ListRepositorySyncDefinitions(
      RepositoryLinkId => 'MyRepositoryLinkId',
      SyncType         => 'CFN_STACK_SYNC',

      );

    # Results:
    my $NextToken = $ListRepositorySyncDefinitionsOutput->NextToken;
    my $RepositorySyncDefinitions =
      $ListRepositorySyncDefinitionsOutput->RepositorySyncDefinitions;

# Returns a L<Paws::CodeStarConnections::ListRepositorySyncDefinitionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar-connections/ListRepositorySyncDefinitions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RepositoryLinkId => Str

The ID of the repository link for the sync definition for which you
want to retrieve information.



=head2 B<REQUIRED> SyncType => Str

The sync type of the repository link for the the sync definition for
which you want to retrieve information.

Valid values are: C<"CFN_STACK_SYNC">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRepositorySyncDefinitions in L<Paws::CodeStarConnections>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

