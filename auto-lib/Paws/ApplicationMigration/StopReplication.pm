
package Paws::ApplicationMigration::StopReplication;
  use Moose;
  has AccountID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accountID');
  has SourceServerID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceServerID', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopReplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/StopReplication');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::SourceServer');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::StopReplication - Arguments for method StopReplication on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopReplication on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method StopReplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopReplication.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $SourceServer = $mgn->StopReplication(
      SourceServerID => 'MySourceServerID',
      AccountID      => 'MyAccountID',        # OPTIONAL
    );

    # Results:
    my $ApplicationID          = $SourceServer->ApplicationID;
    my $Arn                    = $SourceServer->Arn;
    my $ConnectorAction        = $SourceServer->ConnectorAction;
    my $DataReplicationInfo    = $SourceServer->DataReplicationInfo;
    my $FqdnForActionFramework = $SourceServer->FqdnForActionFramework;
    my $IsArchived             = $SourceServer->IsArchived;
    my $LaunchedInstance       = $SourceServer->LaunchedInstance;
    my $LifeCycle              = $SourceServer->LifeCycle;
    my $ReplicationType        = $SourceServer->ReplicationType;
    my $SourceProperties       = $SourceServer->SourceProperties;
    my $SourceServerID         = $SourceServer->SourceServerID;
    my $Tags                   = $SourceServer->Tags;
    my $UserProvidedID         = $SourceServer->UserProvidedID;
    my $VcenterClientID        = $SourceServer->VcenterClientID;

    # Returns a L<Paws::ApplicationMigration::SourceServer> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/StopReplication>

=head1 ATTRIBUTES


=head2 AccountID => Str

Stop Replication Request account ID.



=head2 B<REQUIRED> SourceServerID => Str

Stop Replication Request source server ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopReplication in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

