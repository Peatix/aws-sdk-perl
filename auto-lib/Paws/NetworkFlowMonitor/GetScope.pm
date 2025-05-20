
package Paws::NetworkFlowMonitor::GetScope;
  use Moose;
  has ScopeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'scopeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetScope');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/scopes/{scopeId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFlowMonitor::GetScopeOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFlowMonitor::GetScope - Arguments for method GetScope on L<Paws::NetworkFlowMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetScope on the
L<Network Flow Monitor|Paws::NetworkFlowMonitor> service. Use the attributes of this class
as arguments to method GetScope.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetScope.

=head1 SYNOPSIS

    my $networkflowmonitor = Paws->service('NetworkFlowMonitor');
    my $GetScopeOutput = $networkflowmonitor->GetScope(
      ScopeId => 'MyGetScopeInputScopeIdString',

    );

    # Results:
    my $ScopeArn = $GetScopeOutput->ScopeArn;
    my $ScopeId  = $GetScopeOutput->ScopeId;
    my $Status   = $GetScopeOutput->Status;
    my $Tags     = $GetScopeOutput->Tags;
    my $Targets  = $GetScopeOutput->Targets;

    # Returns a L<Paws::NetworkFlowMonitor::GetScopeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor/GetScope>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScopeId => Str

The identifier for the scope that includes the resources you want to
get data results for. A scope ID is an internally-generated identifier
that includes all the resources for a specific root account. A scope ID
is returned from a C<CreateScope> API call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetScope in L<Paws::NetworkFlowMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

