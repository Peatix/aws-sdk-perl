
package Paws::RedshiftServerless::ListUsageLimits;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn' );
  has UsageType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'usageType' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListUsageLimits');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::ListUsageLimitsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::ListUsageLimits - Arguments for method ListUsageLimits on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListUsageLimits on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method ListUsageLimits.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListUsageLimits.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $ListUsageLimitsResponse = $redshift -serverless->ListUsageLimits(
      MaxResults  => 1,                       # OPTIONAL
      NextToken   => 'MyPaginationToken',     # OPTIONAL
      ResourceArn => 'MyString',              # OPTIONAL
      UsageType   => 'serverless-compute',    # OPTIONAL
    );

    # Results:
    my $NextToken   = $ListUsageLimitsResponse->NextToken;
    my $UsageLimits = $ListUsageLimitsResponse->UsageLimits;

    # Returns a L<Paws::RedshiftServerless::ListUsageLimitsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/ListUsageLimits>

=head1 ATTRIBUTES


=head2 MaxResults => Int

An optional parameter that specifies the maximum number of results to
return. You can use C<nextToken> to get the next page of results. The
default is 100.



=head2 NextToken => Str

If your initial C<ListUsageLimits> operation returns a C<nextToken>,
you can include the returned C<nextToken> in following
C<ListUsageLimits> operations, which returns results in the next page.



=head2 ResourceArn => Str

The Amazon Resource Name (ARN) associated with the resource whose usage
limits you want to list.



=head2 UsageType => Str

The Amazon Redshift Serverless feature whose limits you want to see.

Valid values are: C<"serverless-compute">, C<"cross-region-datasharing">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListUsageLimits in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

