
package Paws::CustomerProfiles::GetWorkflowSteps;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');
  has WorkflowId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'WorkflowId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWorkflowSteps');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/workflows/{WorkflowId}/steps');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::GetWorkflowStepsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetWorkflowSteps - Arguments for method GetWorkflowSteps on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWorkflowSteps on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method GetWorkflowSteps.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWorkflowSteps.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $GetWorkflowStepsResponse = $profile->GetWorkflowSteps(
      DomainName => 'Myname',
      WorkflowId => 'Myuuid',
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'Mytoken',    # OPTIONAL
    );

    # Results:
    my $Items        = $GetWorkflowStepsResponse->Items;
    my $NextToken    = $GetWorkflowStepsResponse->NextToken;
    my $WorkflowId   = $GetWorkflowStepsResponse->WorkflowId;
    my $WorkflowType = $GetWorkflowStepsResponse->WorkflowType;

    # Returns a L<Paws::CustomerProfiles::GetWorkflowStepsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/GetWorkflowSteps>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 B<REQUIRED> WorkflowId => Str

Unique identifier for the workflow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWorkflowSteps in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

