
package Paws::SsmSap::GetDatabase;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has ComponentId => (is => 'ro', isa => 'Str');
  has DatabaseArn => (is => 'ro', isa => 'Str');
  has DatabaseId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDatabase');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/get-database');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SsmSap::GetDatabaseOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SsmSap::GetDatabase - Arguments for method GetDatabase on L<Paws::SsmSap>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDatabase on the
L<AWS Systems Manager for SAP|Paws::SsmSap> service. Use the attributes of this class
as arguments to method GetDatabase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDatabase.

=head1 SYNOPSIS

    my $ssm-sap = Paws->service('SsmSap');
    my $GetDatabaseOutput = $ssm -sap->GetDatabase(
      ApplicationId => 'MyApplicationId',    # OPTIONAL
      ComponentId   => 'MyComponentId',      # OPTIONAL
      DatabaseArn   => 'MySsmSapArn',        # OPTIONAL
      DatabaseId    => 'MyDatabaseId',       # OPTIONAL
    );

    # Results:
    my $Database = $GetDatabaseOutput->Database;
    my $Tags     = $GetDatabaseOutput->Tags;

    # Returns a L<Paws::SsmSap::GetDatabaseOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-sap/GetDatabase>

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The ID of the application.



=head2 ComponentId => Str

The ID of the component.



=head2 DatabaseArn => Str

The Amazon Resource Name (ARN) of the database.



=head2 DatabaseId => Str

The ID of the database.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDatabase in L<Paws::SsmSap>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

