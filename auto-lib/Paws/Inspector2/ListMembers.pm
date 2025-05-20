
package Paws::Inspector2::ListMembers;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has OnlyAssociated => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'onlyAssociated');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMembers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/members/list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::ListMembersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::ListMembers - Arguments for method ListMembers on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMembers on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method ListMembers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMembers.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $ListMembersResponse = $inspector2->ListMembers(
      MaxResults     => 1,                # OPTIONAL
      NextToken      => 'MyNextToken',    # OPTIONAL
      OnlyAssociated => 1,                # OPTIONAL
    );

    # Results:
    my $Members   = $ListMembersResponse->Members;
    my $NextToken = $ListMembersResponse->NextToken;

    # Returns a L<Paws::Inspector2::ListMembersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/ListMembers>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results the response can return. If your request
would return more than the maximum the response will return a
C<nextToken> value, use this value when you call the action again to
get the remaining results.



=head2 NextToken => Str

A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first request
to a list action. If your response returns more than the C<maxResults>
maximum value it will also return a C<nextToken> value. For subsequent
calls, use the C<nextToken> value returned from the previous request to
continue listing results after the first page.



=head2 OnlyAssociated => Bool

Specifies whether to list only currently associated members if C<True>
or to list all members within the organization if C<False>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMembers in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

