
package Paws::WorkSpaces::ListAccountLinks;
  use Moose;
  has LinkStatusFilter => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAccountLinks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::ListAccountLinksResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::ListAccountLinks - Arguments for method ListAccountLinks on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAccountLinks on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method ListAccountLinks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAccountLinks.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $ListAccountLinksResult = $workspaces->ListAccountLinks(
      LinkStatusFilter => [
        'LINKED',
        ... # values: LINKED, LINKING_FAILED, LINK_NOT_FOUND, PENDING_ACCEPTANCE_BY_TARGET_ACCOUNT, REJECTED
      ],    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $AccountLinks = $ListAccountLinksResult->AccountLinks;
    my $NextToken    = $ListAccountLinksResult->NextToken;

    # Returns a L<Paws::WorkSpaces::ListAccountLinksResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/ListAccountLinks>

=head1 ATTRIBUTES


=head2 LinkStatusFilter => ArrayRef[Str|Undef]

Filters the account based on their link status.



=head2 MaxResults => Int

The maximum number of accounts to return.



=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAccountLinks in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

