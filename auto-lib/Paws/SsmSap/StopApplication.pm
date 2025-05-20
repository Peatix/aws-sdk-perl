
package Paws::SsmSap::StopApplication;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', required => 1);
  has IncludeEc2InstanceShutdown => (is => 'ro', isa => 'Bool');
  has StopConnectedEntity => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/stop-application');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SsmSap::StopApplicationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SsmSap::StopApplication - Arguments for method StopApplication on L<Paws::SsmSap>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopApplication on the
L<AWS Systems Manager for SAP|Paws::SsmSap> service. Use the attributes of this class
as arguments to method StopApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopApplication.

=head1 SYNOPSIS

    my $ssm-sap = Paws->service('SsmSap');
    my $StopApplicationOutput = $ssm -sap->StopApplication(
      ApplicationId              => 'MyApplicationId',
      IncludeEc2InstanceShutdown => 1,                   # OPTIONAL
      StopConnectedEntity        => 'DBMS',              # OPTIONAL
    );

    # Results:
    my $OperationId = $StopApplicationOutput->OperationId;

    # Returns a L<Paws::SsmSap::StopApplicationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-sap/StopApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The ID of the application.



=head2 IncludeEc2InstanceShutdown => Bool

Boolean. If included and if set to C<True>, the StopApplication
operation will shut down the associated Amazon EC2 instance in addition
to the application.



=head2 StopConnectedEntity => Str

Specify the C<ConnectedEntityType>. Accepted type is C<DBMS>.

If this parameter is included, the connected DBMS (Database Management
System) will be stopped.

Valid values are: C<"DBMS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopApplication in L<Paws::SsmSap>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

