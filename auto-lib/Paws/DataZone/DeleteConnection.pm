
package Paws::DataZone::DeleteConnection;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConnection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/connections/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::DeleteConnectionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::DeleteConnection - Arguments for method DeleteConnection on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteConnection on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method DeleteConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteConnection.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $DeleteConnectionOutput = $datazone->DeleteConnection(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyConnectionId',

    );

    # Results:
    my $Status = $DeleteConnectionOutput->Status;

    # Returns a L<Paws::DataZone::DeleteConnectionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/DeleteConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain where the connection is deleted.



=head2 B<REQUIRED> Identifier => Str

The ID of the connection that is deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteConnection in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

