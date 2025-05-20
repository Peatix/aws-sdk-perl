
package Paws::Appflow::UnregisterConnector;
  use Moose;
  has ConnectorLabel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorLabel', required => 1);
  has ForceDelete => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'forceDelete');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UnregisterConnector');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/unregister-connector');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Appflow::UnregisterConnectorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::UnregisterConnector - Arguments for method UnregisterConnector on L<Paws::Appflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UnregisterConnector on the
L<Amazon Appflow|Paws::Appflow> service. Use the attributes of this class
as arguments to method UnregisterConnector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UnregisterConnector.

=head1 SYNOPSIS

    my $appflow = Paws->service('Appflow');
    my $UnregisterConnectorResponse = $appflow->UnregisterConnector(
      ConnectorLabel => 'MyConnectorLabel',
      ForceDelete    => 1,                    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appflow/UnregisterConnector>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectorLabel => Str

The label of the connector. The label is unique for each
C<ConnectorRegistration> in your Amazon Web Services account.



=head2 ForceDelete => Bool

Indicates whether Amazon AppFlow should unregister the connector, even
if it is currently in use in one or more connector profiles. The
default value is false.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UnregisterConnector in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

