
package Paws::CodeConnections::GetResourceSyncStatus;
  use Moose;
  has ResourceName => (is => 'ro', isa => 'Str', required => 1);
  has SyncType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourceSyncStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeConnections::GetResourceSyncStatusOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeConnections::GetResourceSyncStatus - Arguments for method GetResourceSyncStatus on L<Paws::CodeConnections>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourceSyncStatus on the
L<AWS CodeConnections|Paws::CodeConnections> service. Use the attributes of this class
as arguments to method GetResourceSyncStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourceSyncStatus.

=head1 SYNOPSIS

    my $codeconnections = Paws->service('CodeConnections');
    my $GetResourceSyncStatusOutput = $codeconnections->GetResourceSyncStatus(
      ResourceName => 'MyResourceName',
      SyncType     => 'CFN_STACK_SYNC',

    );

    # Results:
    my $DesiredState = $GetResourceSyncStatusOutput->DesiredState;
    my $LatestSuccessfulSync =
      $GetResourceSyncStatusOutput->LatestSuccessfulSync;
    my $LatestSync = $GetResourceSyncStatusOutput->LatestSync;

    # Returns a L<Paws::CodeConnections::GetResourceSyncStatusOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeconnections/GetResourceSyncStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceName => Str

The name of the Amazon Web Services resource for the sync status with
the Git repository.



=head2 B<REQUIRED> SyncType => Str

The sync type for the sync status with the Git repository.

Valid values are: C<"CFN_STACK_SYNC">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourceSyncStatus in L<Paws::CodeConnections>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

