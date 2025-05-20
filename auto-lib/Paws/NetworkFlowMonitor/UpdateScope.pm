
package Paws::NetworkFlowMonitor::UpdateScope;
  use Moose;
  has ResourcesToAdd => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFlowMonitor::TargetResource]', traits => ['NameInRequest'], request_name => 'resourcesToAdd');
  has ResourcesToDelete => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFlowMonitor::TargetResource]', traits => ['NameInRequest'], request_name => 'resourcesToDelete');
  has ScopeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'scopeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateScope');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/scopes/{scopeId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFlowMonitor::UpdateScopeOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFlowMonitor::UpdateScope - Arguments for method UpdateScope on L<Paws::NetworkFlowMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateScope on the
L<Network Flow Monitor|Paws::NetworkFlowMonitor> service. Use the attributes of this class
as arguments to method UpdateScope.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateScope.

=head1 SYNOPSIS

    my $networkflowmonitor = Paws->service('NetworkFlowMonitor');
    my $UpdateScopeOutput = $networkflowmonitor->UpdateScope(
      ScopeId        => 'MyScopeId',
      ResourcesToAdd => [
        {
          Region           => 'MyAwsRegion',
          TargetIdentifier => {
            TargetId => {
              AccountId => 'MyAccountId',    # min: 1, max: 12; OPTIONAL
            },
            TargetType => 'ACCOUNT',         # values: ACCOUNT

          },

        },
        ...
      ],    # OPTIONAL
      ResourcesToDelete => [
        {
          Region           => 'MyAwsRegion',
          TargetIdentifier => {
            TargetId => {
              AccountId => 'MyAccountId',    # min: 1, max: 12; OPTIONAL
            },
            TargetType => 'ACCOUNT',         # values: ACCOUNT

          },

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ScopeArn = $UpdateScopeOutput->ScopeArn;
    my $ScopeId  = $UpdateScopeOutput->ScopeId;
    my $Status   = $UpdateScopeOutput->Status;
    my $Tags     = $UpdateScopeOutput->Tags;

    # Returns a L<Paws::NetworkFlowMonitor::UpdateScopeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor/UpdateScope>

=head1 ATTRIBUTES


=head2 ResourcesToAdd => ArrayRef[L<Paws::NetworkFlowMonitor::TargetResource>]

A list of resources to add to a scope.



=head2 ResourcesToDelete => ArrayRef[L<Paws::NetworkFlowMonitor::TargetResource>]

A list of resources to delete from a scope.



=head2 B<REQUIRED> ScopeId => Str

The identifier for the scope that includes the resources you want to
get data results for. A scope ID is an internally-generated identifier
that includes all the resources for a specific root account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateScope in L<Paws::NetworkFlowMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

