
package Paws::NetworkFlowMonitor::DeleteScope;
  use Moose;
  has ScopeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'scopeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteScope');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/scopes/{scopeId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFlowMonitor::DeleteScopeOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFlowMonitor::DeleteScope - Arguments for method DeleteScope on L<Paws::NetworkFlowMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteScope on the
L<Network Flow Monitor|Paws::NetworkFlowMonitor> service. Use the attributes of this class
as arguments to method DeleteScope.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteScope.

=head1 SYNOPSIS

    my $networkflowmonitor = Paws->service('NetworkFlowMonitor');
    my $DeleteScopeOutput = $networkflowmonitor->DeleteScope(
      ScopeId => 'MyScopeId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor/DeleteScope>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScopeId => Str

The identifier for the scope that includes the resources you want to
get data results for. A scope ID is an internally-generated identifier
that includes all the resources for a specific root account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteScope in L<Paws::NetworkFlowMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

