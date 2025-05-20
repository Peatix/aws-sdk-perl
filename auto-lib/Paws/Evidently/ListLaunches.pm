
package Paws::Evidently::ListLaunches;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Project => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'project', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLaunches');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{project}/launches');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Evidently::ListLaunchesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::ListLaunches - Arguments for method ListLaunches on L<Paws::Evidently>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLaunches on the
L<Amazon CloudWatch Evidently|Paws::Evidently> service. Use the attributes of this class
as arguments to method ListLaunches.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLaunches.

=head1 SYNOPSIS

    my $evidently = Paws->service('Evidently');
    my $ListLaunchesResponse = $evidently->ListLaunches(
      Project    => 'MyProjectRef',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      Status     => 'CREATED',        # OPTIONAL
    );

    # Results:
    my $Launches  = $ListLaunchesResponse->Launches;
    my $NextToken = $ListLaunchesResponse->NextToken;

    # Returns a L<Paws::Evidently::ListLaunchesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/evidently/ListLaunches>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to include in the response.



=head2 NextToken => Str

The token to use when requesting the next set of results. You received
this token from a previous C<ListLaunches> operation.



=head2 B<REQUIRED> Project => Str

The name or ARN of the project to return the launch list from.



=head2 Status => Str

Use this optional parameter to limit the returned results to only the
launches with the status that you specify here.

Valid values are: C<"CREATED">, C<"UPDATING">, C<"RUNNING">, C<"COMPLETED">, C<"CANCELLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLaunches in L<Paws::Evidently>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

