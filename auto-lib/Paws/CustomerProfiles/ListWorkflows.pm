
package Paws::CustomerProfiles::ListWorkflows;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');
  has QueryEndDate => (is => 'ro', isa => 'Str');
  has QueryStartDate => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has WorkflowType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWorkflows');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/workflows');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::ListWorkflowsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::ListWorkflows - Arguments for method ListWorkflows on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWorkflows on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method ListWorkflows.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWorkflows.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $ListWorkflowsResponse = $profile->ListWorkflows(
      DomainName     => 'Myname',
      MaxResults     => 1,                        # OPTIONAL
      NextToken      => 'Mytoken',                # OPTIONAL
      QueryEndDate   => '1970-01-01T01:00:00',    # OPTIONAL
      QueryStartDate => '1970-01-01T01:00:00',    # OPTIONAL
      Status         => 'NOT_STARTED',            # OPTIONAL
      WorkflowType   => 'APPFLOW_INTEGRATION',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListWorkflowsResponse->Items;
    my $NextToken = $ListWorkflowsResponse->NextToken;

    # Returns a L<Paws::CustomerProfiles::ListWorkflowsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/ListWorkflows>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 QueryEndDate => Str

Retrieve workflows ended after timestamp.



=head2 QueryStartDate => Str

Retrieve workflows started after timestamp.



=head2 Status => Str

Status of workflow execution.

Valid values are: C<"NOT_STARTED">, C<"IN_PROGRESS">, C<"COMPLETE">, C<"FAILED">, C<"SPLIT">, C<"RETRY">, C<"CANCELLED">

=head2 WorkflowType => Str

The type of workflow. The only supported value is APPFLOW_INTEGRATION.

Valid values are: C<"APPFLOW_INTEGRATION">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWorkflows in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

