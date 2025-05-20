
package Paws::RedshiftServerless::ListScheduledActions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NamespaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespaceName' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListScheduledActions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::ListScheduledActionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::ListScheduledActions - Arguments for method ListScheduledActions on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListScheduledActions on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method ListScheduledActions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListScheduledActions.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $ListScheduledActionsResponse =
      $redshift -serverless->ListScheduledActions(
      MaxResults    => 1,                      # OPTIONAL
      NamespaceName => 'MyNamespaceName',      # OPTIONAL
      NextToken     => 'MyPaginationToken',    # OPTIONAL
      );

    # Results:
    my $NextToken        = $ListScheduledActionsResponse->NextToken;
    my $ScheduledActions = $ListScheduledActionsResponse->ScheduledActions;

   # Returns a L<Paws::RedshiftServerless::ListScheduledActionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/ListScheduledActions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

An optional parameter that specifies the maximum number of results to
return. Use C<nextToken> to display the next page of results.



=head2 NamespaceName => Str

The name of namespace associated with the scheduled action to retrieve.



=head2 NextToken => Str

If C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListScheduledActions in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

