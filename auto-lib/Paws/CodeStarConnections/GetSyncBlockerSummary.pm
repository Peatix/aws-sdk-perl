
package Paws::CodeStarConnections::GetSyncBlockerSummary;
  use Moose;
  has ResourceName => (is => 'ro', isa => 'Str', required => 1);
  has SyncType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSyncBlockerSummary');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStarConnections::GetSyncBlockerSummaryOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::GetSyncBlockerSummary - Arguments for method GetSyncBlockerSummary on L<Paws::CodeStarConnections>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSyncBlockerSummary on the
L<AWS CodeStar connections|Paws::CodeStarConnections> service. Use the attributes of this class
as arguments to method GetSyncBlockerSummary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSyncBlockerSummary.

=head1 SYNOPSIS

    my $codestar-connections = Paws->service('CodeStarConnections');
    my $GetSyncBlockerSummaryOutput =
      $codestar -connections->GetSyncBlockerSummary(
      ResourceName => 'MyResourceName',
      SyncType     => 'CFN_STACK_SYNC',

      );

    # Results:
    my $SyncBlockerSummary = $GetSyncBlockerSummaryOutput->SyncBlockerSummary;

   # Returns a L<Paws::CodeStarConnections::GetSyncBlockerSummaryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar-connections/GetSyncBlockerSummary>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceName => Str

The name of the Amazon Web Services resource currently blocked from
automatically being synced from a Git repository.



=head2 B<REQUIRED> SyncType => Str

The sync type for the sync blocker summary.

Valid values are: C<"CFN_STACK_SYNC">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSyncBlockerSummary in L<Paws::CodeStarConnections>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

