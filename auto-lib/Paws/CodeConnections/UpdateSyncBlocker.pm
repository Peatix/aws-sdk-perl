
package Paws::CodeConnections::UpdateSyncBlocker;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has ResolvedReason => (is => 'ro', isa => 'Str', required => 1);
  has ResourceName => (is => 'ro', isa => 'Str', required => 1);
  has SyncType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSyncBlocker');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeConnections::UpdateSyncBlockerOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeConnections::UpdateSyncBlocker - Arguments for method UpdateSyncBlocker on L<Paws::CodeConnections>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSyncBlocker on the
L<AWS CodeConnections|Paws::CodeConnections> service. Use the attributes of this class
as arguments to method UpdateSyncBlocker.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSyncBlocker.

=head1 SYNOPSIS

    my $codeconnections = Paws->service('CodeConnections');
    my $UpdateSyncBlockerOutput = $codeconnections->UpdateSyncBlocker(
      Id             => 'MyId',
      ResolvedReason => 'MyResolvedReason',
      ResourceName   => 'MyResourceName',
      SyncType       => 'CFN_STACK_SYNC',

    );

    # Results:
    my $ParentResourceName = $UpdateSyncBlockerOutput->ParentResourceName;
    my $ResourceName       = $UpdateSyncBlockerOutput->ResourceName;
    my $SyncBlocker        = $UpdateSyncBlockerOutput->SyncBlocker;

    # Returns a L<Paws::CodeConnections::UpdateSyncBlockerOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeconnections/UpdateSyncBlocker>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the sync blocker to be updated.



=head2 B<REQUIRED> ResolvedReason => Str

The reason for resolving the sync blocker.



=head2 B<REQUIRED> ResourceName => Str

The name of the resource for the sync blocker to be updated.



=head2 B<REQUIRED> SyncType => Str

The sync type of the sync blocker to be updated.

Valid values are: C<"CFN_STACK_SYNC">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSyncBlocker in L<Paws::CodeConnections>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

