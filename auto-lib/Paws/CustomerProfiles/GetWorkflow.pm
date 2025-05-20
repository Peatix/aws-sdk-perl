
package Paws::CustomerProfiles::GetWorkflow;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has WorkflowId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'WorkflowId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWorkflow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/workflows/{WorkflowId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::GetWorkflowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetWorkflow - Arguments for method GetWorkflow on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWorkflow on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method GetWorkflow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWorkflow.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $GetWorkflowResponse = $profile->GetWorkflow(
      DomainName => 'Myname',
      WorkflowId => 'Myuuid',

    );

    # Results:
    my $Attributes       = $GetWorkflowResponse->Attributes;
    my $ErrorDescription = $GetWorkflowResponse->ErrorDescription;
    my $LastUpdatedAt    = $GetWorkflowResponse->LastUpdatedAt;
    my $Metrics          = $GetWorkflowResponse->Metrics;
    my $StartDate        = $GetWorkflowResponse->StartDate;
    my $Status           = $GetWorkflowResponse->Status;
    my $WorkflowId       = $GetWorkflowResponse->WorkflowId;
    my $WorkflowType     = $GetWorkflowResponse->WorkflowType;

    # Returns a L<Paws::CustomerProfiles::GetWorkflowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/GetWorkflow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 B<REQUIRED> WorkflowId => Str

Unique identifier for the workflow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWorkflow in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

