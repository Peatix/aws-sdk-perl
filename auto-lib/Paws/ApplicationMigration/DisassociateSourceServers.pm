
package Paws::ApplicationMigration::DisassociateSourceServers;
  use Moose;
  has AccountID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accountID');
  has ApplicationID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationID', required => 1);
  has SourceServerIDs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'sourceServerIDs', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateSourceServers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DisassociateSourceServers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::DisassociateSourceServersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::DisassociateSourceServers - Arguments for method DisassociateSourceServers on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateSourceServers on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method DisassociateSourceServers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateSourceServers.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $DisassociateSourceServersResponse = $mgn->DisassociateSourceServers(
      ApplicationID   => 'MyApplicationID',
      SourceServerIDs => [
        'MySourceServerID', ...    # min: 19, max: 19
      ],
      AccountID => 'MyAccountID',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/DisassociateSourceServers>

=head1 ATTRIBUTES


=head2 AccountID => Str

Account ID.



=head2 B<REQUIRED> ApplicationID => Str

Application ID.



=head2 B<REQUIRED> SourceServerIDs => ArrayRef[Str|Undef]

Source server IDs list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateSourceServers in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

