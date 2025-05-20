
package Paws::DataZone::GetConnection;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has WithSecret => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'withSecret');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConnection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/connections/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::GetConnectionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetConnection - Arguments for method GetConnection on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConnection on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method GetConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConnection.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $GetConnectionOutput = $datazone->GetConnection(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyConnectionId',
      WithSecret       => 1,                  # OPTIONAL
    );

    # Results:
    my $ConnectionCredentials = $GetConnectionOutput->ConnectionCredentials;
    my $ConnectionId          = $GetConnectionOutput->ConnectionId;
    my $Description           = $GetConnectionOutput->Description;
    my $DomainId              = $GetConnectionOutput->DomainId;
    my $DomainUnitId          = $GetConnectionOutput->DomainUnitId;
    my $EnvironmentId         = $GetConnectionOutput->EnvironmentId;
    my $EnvironmentUserRole   = $GetConnectionOutput->EnvironmentUserRole;
    my $Name                  = $GetConnectionOutput->Name;
    my $PhysicalEndpoints     = $GetConnectionOutput->PhysicalEndpoints;
    my $ProjectId             = $GetConnectionOutput->ProjectId;
    my $Props                 = $GetConnectionOutput->Props;
    my $Type                  = $GetConnectionOutput->Type;

    # Returns a L<Paws::DataZone::GetConnectionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/GetConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain where we get the connection.



=head2 B<REQUIRED> Identifier => Str

The connection ID.



=head2 WithSecret => Bool

Specifies whether a connection has a secret.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConnection in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

