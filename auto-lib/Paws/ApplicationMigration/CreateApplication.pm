
package Paws::ApplicationMigration::CreateApplication;
  use Moose;
  has AccountID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accountID');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ApplicationMigration::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateApplication');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::Application');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::CreateApplication - Arguments for method CreateApplication on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApplication on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method CreateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApplication.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $Application = $mgn->CreateApplication(
      Name        => 'MyApplicationName',
      AccountID   => 'MyAccountID',                 # OPTIONAL
      Description => 'MyApplicationDescription',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: max: 256, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $ApplicationAggregatedStatus = $Application->ApplicationAggregatedStatus;
    my $ApplicationID               = $Application->ApplicationID;
    my $Arn                         = $Application->Arn;
    my $CreationDateTime            = $Application->CreationDateTime;
    my $Description                 = $Application->Description;
    my $IsArchived                  = $Application->IsArchived;
    my $LastModifiedDateTime        = $Application->LastModifiedDateTime;
    my $Name                        = $Application->Name;
    my $Tags                        = $Application->Tags;
    my $WaveID                      = $Application->WaveID;

    # Returns a L<Paws::ApplicationMigration::Application> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/CreateApplication>

=head1 ATTRIBUTES


=head2 AccountID => Str

Account ID.



=head2 Description => Str

Application description.



=head2 B<REQUIRED> Name => Str

Application name.



=head2 Tags => L<Paws::ApplicationMigration::TagsMap>

Application tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApplication in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

