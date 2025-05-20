
package Paws::SsmSap::RegisterApplication;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', required => 1);
  has ApplicationType => (is => 'ro', isa => 'Str', required => 1);
  has ComponentsInfo => (is => 'ro', isa => 'ArrayRef[Paws::SsmSap::ComponentInfo]');
  has Credentials => (is => 'ro', isa => 'ArrayRef[Paws::SsmSap::ApplicationCredential]');
  has DatabaseArn => (is => 'ro', isa => 'Str');
  has Instances => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has SapInstanceNumber => (is => 'ro', isa => 'Str');
  has Sid => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::SsmSap::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/register-application');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SsmSap::RegisterApplicationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SsmSap::RegisterApplication - Arguments for method RegisterApplication on L<Paws::SsmSap>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterApplication on the
L<AWS Systems Manager for SAP|Paws::SsmSap> service. Use the attributes of this class
as arguments to method RegisterApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterApplication.

=head1 SYNOPSIS

    my $ssm-sap = Paws->service('SsmSap');
    my $RegisterApplicationOutput = $ssm -sap->RegisterApplication(
      ApplicationId   => 'MyApplicationId',
      ApplicationType => 'HANA',
      Instances       => [ 'MyInstanceId', ... ],
      ComponentsInfo  => [
        {
          ComponentType => 'HANA'
          ,    # values: HANA, HANA_NODE, ABAP, ASCS, DIALOG, WEBDISP, WD, ERS
          Ec2InstanceId => 'MyInstanceId',
          Sid           => 'MySID',

        },
        ...
      ],    # OPTIONAL
      Credentials => [
        {
          CredentialType => 'ADMIN',             # values: ADMIN
          DatabaseName   => 'MyDatabaseName',    # min: 1, max: 100
          SecretId       => 'MySecretId',        # min: 1, max: 100

        },
        ...
      ],    # OPTIONAL
      DatabaseArn       => 'MySsmSapArn',            # OPTIONAL
      SapInstanceNumber => 'MySAPInstanceNumber',    # OPTIONAL
      Sid               => 'MySID',                  # OPTIONAL
      Tags              => {
        'MyTagKey' => 'MyTagValue',                  # , value: min: 1, max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Application = $RegisterApplicationOutput->Application;
    my $OperationId = $RegisterApplicationOutput->OperationId;

    # Returns a L<Paws::SsmSap::RegisterApplicationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-sap/RegisterApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The ID of the application.



=head2 B<REQUIRED> ApplicationType => Str

The type of the application.

Valid values are: C<"HANA">, C<"SAP_ABAP">

=head2 ComponentsInfo => ArrayRef[L<Paws::SsmSap::ComponentInfo>]

This is an optional parameter for component details to which the SAP
ABAP application is attached, such as Web Dispatcher.

This is an array of ApplicationComponent objects. You may input 0 to 5
items.



=head2 Credentials => ArrayRef[L<Paws::SsmSap::ApplicationCredential>]

The credentials of the SAP application.



=head2 DatabaseArn => Str

The Amazon Resource Name of the SAP HANA database.



=head2 B<REQUIRED> Instances => ArrayRef[Str|Undef]

The Amazon EC2 instances on which your SAP application is running.



=head2 SapInstanceNumber => Str

The SAP instance number of the application.



=head2 Sid => Str

The System ID of the application.



=head2 Tags => L<Paws::SsmSap::TagMap>

The tags to be attached to the SAP application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterApplication in L<Paws::SsmSap>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

