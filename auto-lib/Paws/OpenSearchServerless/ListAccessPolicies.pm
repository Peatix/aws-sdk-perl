
package Paws::OpenSearchServerless::ListAccessPolicies;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Resource => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'resource' );
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAccessPolicies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearchServerless::ListAccessPoliciesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::ListAccessPolicies - Arguments for method ListAccessPolicies on L<Paws::OpenSearchServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAccessPolicies on the
L<OpenSearch Service Serverless|Paws::OpenSearchServerless> service. Use the attributes of this class
as arguments to method ListAccessPolicies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAccessPolicies.

=head1 SYNOPSIS

    my $aoss = Paws->service('OpenSearchServerless');
    my $ListAccessPoliciesResponse = $aoss->ListAccessPolicies(
      Type       => 'data',
      MaxResults => 1,                        # OPTIONAL
      NextToken  => 'MyString',               # OPTIONAL
      Resource   => [ 'MyResource', ... ],    # OPTIONAL
    );

    # Results:
    my $AccessPolicySummaries =
      $ListAccessPoliciesResponse->AccessPolicySummaries;
    my $NextToken = $ListAccessPoliciesResponse->NextToken;

   # Returns a L<Paws::OpenSearchServerless::ListAccessPoliciesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aoss/ListAccessPolicies>

=head1 ATTRIBUTES


=head2 MaxResults => Int

An optional parameter that specifies the maximum number of results to
return. You can use C<nextToken> to get the next page of results. The
default is 20.



=head2 NextToken => Str

If your initial C<ListAccessPolicies> operation returns a C<nextToken>,
you can include the returned C<nextToken> in subsequent
C<ListAccessPolicies> operations, which returns results in the next
page.



=head2 Resource => ArrayRef[Str|Undef]

Resource filters (can be collections or indexes) that policies can
apply to.



=head2 B<REQUIRED> Type => Str

The type of access policy.

Valid values are: C<"data">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAccessPolicies in L<Paws::OpenSearchServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

