
package Paws::OpenSearchServerless::ListLifecyclePolicies;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Resources => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'resources' );
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLifecyclePolicies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearchServerless::ListLifecyclePoliciesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::ListLifecyclePolicies - Arguments for method ListLifecyclePolicies on L<Paws::OpenSearchServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLifecyclePolicies on the
L<OpenSearch Service Serverless|Paws::OpenSearchServerless> service. Use the attributes of this class
as arguments to method ListLifecyclePolicies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLifecyclePolicies.

=head1 SYNOPSIS

    my $aoss = Paws->service('OpenSearchServerless');
    my $ListLifecyclePoliciesResponse = $aoss->ListLifecyclePolicies(
      Type       => 'retention',
      MaxResults => 1,                                 # OPTIONAL
      NextToken  => 'MyString',                        # OPTIONAL
      Resources  => [ 'MyLifecycleResource', ... ],    # OPTIONAL
    );

    # Results:
    my $LifecyclePolicySummaries =
      $ListLifecyclePoliciesResponse->LifecyclePolicySummaries;
    my $NextToken = $ListLifecyclePoliciesResponse->NextToken;

# Returns a L<Paws::OpenSearchServerless::ListLifecyclePoliciesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aoss/ListLifecyclePolicies>

=head1 ATTRIBUTES


=head2 MaxResults => Int

An optional parameter that specifies the maximum number of results to
return. You can use use C<nextToken> to get the next page of results.
The default is 10.



=head2 NextToken => Str

If your initial C<ListLifecyclePolicies> operation returns a
C<nextToken>, you can include the returned C<nextToken> in subsequent
C<ListLifecyclePolicies> operations, which returns results in the next
page.



=head2 Resources => ArrayRef[Str|Undef]

Resource filters that policies can apply to. Currently, the only
supported resource type is C<index>.



=head2 B<REQUIRED> Type => Str

The type of lifecycle policy.

Valid values are: C<"retention">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLifecyclePolicies in L<Paws::OpenSearchServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

