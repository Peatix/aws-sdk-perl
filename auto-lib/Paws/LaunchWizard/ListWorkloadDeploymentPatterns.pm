
package Paws::LaunchWizard::ListWorkloadDeploymentPatterns;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has WorkloadName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workloadName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWorkloadDeploymentPatterns');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listWorkloadDeploymentPatterns');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LaunchWizard::ListWorkloadDeploymentPatternsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LaunchWizard::ListWorkloadDeploymentPatterns - Arguments for method ListWorkloadDeploymentPatterns on L<Paws::LaunchWizard>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWorkloadDeploymentPatterns on the
L<AWS Launch Wizard|Paws::LaunchWizard> service. Use the attributes of this class
as arguments to method ListWorkloadDeploymentPatterns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWorkloadDeploymentPatterns.

=head1 SYNOPSIS

    my $launchwizard = Paws->service('LaunchWizard');
    my $ListWorkloadDeploymentPatternsOutput =
      $launchwizard->ListWorkloadDeploymentPatterns(
      WorkloadName => 'MyWorkloadName',
      MaxResults   => 1,                  # OPTIONAL
      NextToken    => 'MyNextToken',      # OPTIONAL
      );

    # Results:
    my $NextToken = $ListWorkloadDeploymentPatternsOutput->NextToken;
    my $WorkloadDeploymentPatterns =
      $ListWorkloadDeploymentPatternsOutput->WorkloadDeploymentPatterns;

 # Returns a L<Paws::LaunchWizard::ListWorkloadDeploymentPatternsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/launchwizard/ListWorkloadDeploymentPatterns>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output.



=head2 NextToken => Str

The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.



=head2 B<REQUIRED> WorkloadName => Str

The name of the workload.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWorkloadDeploymentPatterns in L<Paws::LaunchWizard>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

