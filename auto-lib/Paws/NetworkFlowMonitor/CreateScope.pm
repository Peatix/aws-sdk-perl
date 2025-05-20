
package Paws::NetworkFlowMonitor::CreateScope;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Tags => (is => 'ro', isa => 'Paws::NetworkFlowMonitor::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFlowMonitor::TargetResource]', traits => ['NameInRequest'], request_name => 'targets', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateScope');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/scopes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFlowMonitor::CreateScopeOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFlowMonitor::CreateScope - Arguments for method CreateScope on L<Paws::NetworkFlowMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateScope on the
L<Network Flow Monitor|Paws::NetworkFlowMonitor> service. Use the attributes of this class
as arguments to method CreateScope.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateScope.

=head1 SYNOPSIS

    my $networkflowmonitor = Paws->service('NetworkFlowMonitor');
    my $CreateScopeOutput = $networkflowmonitor->CreateScope(
      Targets => [
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
      ],
      ClientToken => 'MyUuidString',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',     # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $ScopeArn = $CreateScopeOutput->ScopeArn;
    my $ScopeId  = $CreateScopeOutput->ScopeId;
    my $Status   = $CreateScopeOutput->Status;
    my $Tags     = $CreateScopeOutput->Tags;

    # Returns a L<Paws::NetworkFlowMonitor::CreateScopeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor/CreateScope>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive string of up to 64 ASCII characters that you
specify to make an idempotent API request. Don't reuse the same client
token for other API requests.



=head2 Tags => L<Paws::NetworkFlowMonitor::TagMap>

The tags for a scope. You can add a maximum of 200 tags.



=head2 B<REQUIRED> Targets => ArrayRef[L<Paws::NetworkFlowMonitor::TargetResource>]

The targets to define the scope to be monitored. Currently, a target is
an Amazon Web Services account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateScope in L<Paws::NetworkFlowMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

