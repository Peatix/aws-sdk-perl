
package Paws::LaunchWizard::ListDeployments;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::LaunchWizard::DeploymentFilter]', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDeployments');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listDeployments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LaunchWizard::ListDeploymentsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LaunchWizard::ListDeployments - Arguments for method ListDeployments on L<Paws::LaunchWizard>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDeployments on the
L<AWS Launch Wizard|Paws::LaunchWizard> service. Use the attributes of this class
as arguments to method ListDeployments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDeployments.

=head1 SYNOPSIS

    my $launchwizard = Paws->service('LaunchWizard');
    my $ListDeploymentsOutput = $launchwizard->ListDeployments(
      Filters => [
        {
          Name => 'WORKLOAD_NAME'
          ,    # values: WORKLOAD_NAME, DEPLOYMENT_STATUS; OPTIONAL
          Values => [
            'MyDeploymentFilterValuesMemberString', ...    # min: 1, max: 100
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Deployments = $ListDeploymentsOutput->Deployments;
    my $NextToken   = $ListDeploymentsOutput->NextToken;

    # Returns a L<Paws::LaunchWizard::ListDeploymentsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/launchwizard/ListDeployments>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::LaunchWizard::DeploymentFilter>]

Filters to scope the results. The following filters are supported:

=over

=item *

C<WORKLOAD_NAME> - The name used in deployments.

=item *

C<DEPLOYMENT_STATUS> - C<COMPLETED> | C<CREATING> |
C<DELETE_IN_PROGRESS> | C<DELETE_INITIATING> | C<DELETE_FAILED> |
C<DELETED> | C<FAILED> | C<IN_PROGRESS> | C<VALIDATING>

=back




=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output.



=head2 NextToken => Str

The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDeployments in L<Paws::LaunchWizard>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

