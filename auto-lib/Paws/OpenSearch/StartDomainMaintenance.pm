
package Paws::OpenSearch::StartDomainMaintenance;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has NodeId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartDomainMaintenance');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/domain/{DomainName}/domainMaintenance');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::StartDomainMaintenanceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::StartDomainMaintenance - Arguments for method StartDomainMaintenance on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDomainMaintenance on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method StartDomainMaintenance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDomainMaintenance.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $StartDomainMaintenanceResponse = $es->StartDomainMaintenance(
      Action     => 'REBOOT_NODE',
      DomainName => 'MyDomainName',
      NodeId     => 'MyNodeId',       # OPTIONAL
    );

    # Results:
    my $MaintenanceId = $StartDomainMaintenanceResponse->MaintenanceId;

    # Returns a L<Paws::OpenSearch::StartDomainMaintenanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

The name of the action.

Valid values are: C<"REBOOT_NODE">, C<"RESTART_SEARCH_PROCESS">, C<"RESTART_DASHBOARD">

=head2 B<REQUIRED> DomainName => Str

The name of the domain.



=head2 NodeId => Str

The ID of the data node.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDomainMaintenance in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

