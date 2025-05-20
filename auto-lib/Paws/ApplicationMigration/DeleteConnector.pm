
package Paws::ApplicationMigration::DeleteConnector;
  use Moose;
  has ConnectorID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorID', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConnector');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DeleteConnector');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::DeleteConnector - Arguments for method DeleteConnector on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteConnector on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method DeleteConnector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteConnector.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    $mgn->DeleteConnector(
      ConnectorID => 'MyConnectorID',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/DeleteConnector>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectorID => Str

Delete Connector request connector ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteConnector in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

