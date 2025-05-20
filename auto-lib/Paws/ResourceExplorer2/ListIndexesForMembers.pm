
package Paws::ResourceExplorer2::ListIndexesForMembers;
  use Moose;
  has AccountIdList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIndexesForMembers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListIndexesForMembers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceExplorer2::ListIndexesForMembersOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::ListIndexesForMembers - Arguments for method ListIndexesForMembers on L<Paws::ResourceExplorer2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListIndexesForMembers on the
L<AWS Resource Explorer|Paws::ResourceExplorer2> service. Use the attributes of this class
as arguments to method ListIndexesForMembers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListIndexesForMembers.

=head1 SYNOPSIS

    my $resource-explorer-2 = Paws->service('ResourceExplorer2');
    my $ListIndexesForMembersOutput =
      $resource -explorer- 2->ListIndexesForMembers(
      AccountIdList => [
        'MyAccountId', ...    # min: 1, max: 2048
      ],
      MaxResults => 1,                                                # OPTIONAL
      NextToken  => 'MyListIndexesForMembersInputNextTokenString',    # OPTIONAL
      );

    # Results:
    my $Indexes   = $ListIndexesForMembersOutput->Indexes;
    my $NextToken = $ListIndexesForMembersOutput->NextToken;

    # Returns a L<Paws::ResourceExplorer2::ListIndexesForMembersOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2/ListIndexesForMembers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountIdList => ArrayRef[Str|Undef]

The account IDs will limit the output to only indexes from these
accounts.



=head2 MaxResults => Int

The maximum number of results that you want included on each page of
the response. If you do not include this parameter, it defaults to a
value appropriate to the operation. If additional items exist beyond
those included in the current response, the C<NextToken> response
element is present and has a value (is not null). Include that value as
the C<NextToken> request parameter in the next call to the operation to
get the next part of the results.

An API operation can return fewer results than the maximum even when
there are more results available. You should check C<NextToken> after
every operation to ensure that you receive all of the results.



=head2 NextToken => Str

The parameter for receiving additional results if you receive a
C<NextToken> response in a previous request. A C<NextToken> response
indicates that more output is available. Set this parameter to the
value of the previous call's C<NextToken> response to indicate where
the output should continue from. The pagination tokens expire after 24
hours.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListIndexesForMembers in L<Paws::ResourceExplorer2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

