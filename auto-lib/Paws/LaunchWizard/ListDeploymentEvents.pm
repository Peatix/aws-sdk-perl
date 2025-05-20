
package Paws::LaunchWizard::ListDeploymentEvents;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDeploymentEvents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listDeploymentEvents');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LaunchWizard::ListDeploymentEventsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LaunchWizard::ListDeploymentEvents - Arguments for method ListDeploymentEvents on L<Paws::LaunchWizard>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDeploymentEvents on the
L<AWS Launch Wizard|Paws::LaunchWizard> service. Use the attributes of this class
as arguments to method ListDeploymentEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDeploymentEvents.

=head1 SYNOPSIS

    my $launchwizard = Paws->service('LaunchWizard');
    my $ListDeploymentEventsOutput = $launchwizard->ListDeploymentEvents(
      DeploymentId => 'MyDeploymentId',
      MaxResults   => 1,                  # OPTIONAL
      NextToken    => 'MyNextToken',      # OPTIONAL
    );

    # Results:
    my $DeploymentEvents = $ListDeploymentEventsOutput->DeploymentEvents;
    my $NextToken        = $ListDeploymentEventsOutput->NextToken;

    # Returns a L<Paws::LaunchWizard::ListDeploymentEventsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/launchwizard/ListDeploymentEvents>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeploymentId => Str

The ID of the deployment.



=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output.



=head2 NextToken => Str

The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDeploymentEvents in L<Paws::LaunchWizard>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

