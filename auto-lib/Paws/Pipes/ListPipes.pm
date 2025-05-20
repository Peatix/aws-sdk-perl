
package Paws::Pipes::ListPipes;
  use Moose;
  has CurrentState => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'CurrentState');
  has DesiredState => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'DesiredState');
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'Limit');
  has NamePrefix => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NamePrefix');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has SourcePrefix => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'SourcePrefix');
  has TargetPrefix => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'TargetPrefix');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPipes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/pipes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pipes::ListPipesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pipes::ListPipes - Arguments for method ListPipes on L<Paws::Pipes>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPipes on the
L<Amazon EventBridge Pipes|Paws::Pipes> service. Use the attributes of this class
as arguments to method ListPipes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPipes.

=head1 SYNOPSIS

    my $pipes = Paws->service('Pipes');
    my $ListPipesResponse = $pipes->ListPipes(
      CurrentState => 'RUNNING',          # OPTIONAL
      DesiredState => 'RUNNING',          # OPTIONAL
      Limit        => 1,                  # OPTIONAL
      NamePrefix   => 'MyPipeName',       # OPTIONAL
      NextToken    => 'MyNextToken',      # OPTIONAL
      SourcePrefix => 'MyResourceArn',    # OPTIONAL
      TargetPrefix => 'MyResourceArn',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListPipesResponse->NextToken;
    my $Pipes     = $ListPipesResponse->Pipes;

    # Returns a L<Paws::Pipes::ListPipesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pipes/ListPipes>

=head1 ATTRIBUTES


=head2 CurrentState => Str

The state the pipe is in.

Valid values are: C<"RUNNING">, C<"STOPPED">, C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"STARTING">, C<"STOPPING">, C<"CREATE_FAILED">, C<"UPDATE_FAILED">, C<"START_FAILED">, C<"STOP_FAILED">, C<"DELETE_FAILED">, C<"CREATE_ROLLBACK_FAILED">, C<"DELETE_ROLLBACK_FAILED">, C<"UPDATE_ROLLBACK_FAILED">

=head2 DesiredState => Str

The state the pipe should be in.

Valid values are: C<"RUNNING">, C<"STOPPED">

=head2 Limit => Int

The maximum number of pipes to include in the response.



=head2 NamePrefix => Str

A value that will return a subset of the pipes associated with this
account. For example, C<"NamePrefix": "ABC"> will return all endpoints
with "ABC" in the name.



=head2 NextToken => Str

If C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page. Keep
all other arguments unchanged. Each pagination token expires after 24
hours. Using an expired pagination token will return an HTTP 400
InvalidToken error.



=head2 SourcePrefix => Str

The prefix matching the pipe source.



=head2 TargetPrefix => Str

The prefix matching the pipe target.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPipes in L<Paws::Pipes>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

