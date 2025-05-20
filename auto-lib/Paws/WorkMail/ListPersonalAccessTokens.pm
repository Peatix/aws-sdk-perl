
package Paws::WorkMail::ListPersonalAccessTokens;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);
  has UserId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPersonalAccessTokens');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::ListPersonalAccessTokensResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListPersonalAccessTokens - Arguments for method ListPersonalAccessTokens on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPersonalAccessTokens on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method ListPersonalAccessTokens.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPersonalAccessTokens.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $ListPersonalAccessTokensResponse = $workmail->ListPersonalAccessTokens(
      OrganizationId => 'MyOrganizationId',
      MaxResults     => 1,                       # OPTIONAL
      NextToken      => 'MyNextToken',           # OPTIONAL
      UserId         => 'MyEntityIdentifier',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListPersonalAccessTokensResponse->NextToken;
    my $PersonalAccessTokenSummaries =
      $ListPersonalAccessTokensResponse->PersonalAccessTokenSummaries;

    # Returns a L<Paws::WorkMail::ListPersonalAccessTokensResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/ListPersonalAccessTokens>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum amount of items that should be returned in a response.



=head2 NextToken => Str

The token from the previous response to query the next page.



=head2 B<REQUIRED> OrganizationId => Str

The Organization ID.



=head2 UserId => Str

The WorkMail User ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPersonalAccessTokens in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

