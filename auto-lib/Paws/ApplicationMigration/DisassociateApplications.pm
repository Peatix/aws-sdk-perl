
package Paws::ApplicationMigration::DisassociateApplications;
  use Moose;
  has AccountID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accountID');
  has ApplicationIDs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'applicationIDs', required => 1);
  has WaveID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'waveID', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateApplications');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DisassociateApplications');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::DisassociateApplicationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::DisassociateApplications - Arguments for method DisassociateApplications on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateApplications on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method DisassociateApplications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateApplications.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $DisassociateApplicationsResponse = $mgn->DisassociateApplications(
      ApplicationIDs => [
        'MyApplicationID', ...    # min: 21, max: 21
      ],
      WaveID    => 'MyWaveID',
      AccountID => 'MyAccountID',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/DisassociateApplications>

=head1 ATTRIBUTES


=head2 AccountID => Str

Account ID.



=head2 B<REQUIRED> ApplicationIDs => ArrayRef[Str|Undef]

Application IDs list.



=head2 B<REQUIRED> WaveID => Str

Wave ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateApplications in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

