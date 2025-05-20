package Paws::ApplicationInsights::DetectedWorkload;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has ACTIVE_DIRECTORY => (is => 'ro', isa => 'Paws::ApplicationInsights::WorkloadMetaData');
  has CUSTOM => (is => 'ro', isa => 'Paws::ApplicationInsights::WorkloadMetaData');
  has DEFAULT => (is => 'ro', isa => 'Paws::ApplicationInsights::WorkloadMetaData');
  has DOT_NET_CORE => (is => 'ro', isa => 'Paws::ApplicationInsights::WorkloadMetaData');
  has DOT_NET_WEB => (is => 'ro', isa => 'Paws::ApplicationInsights::WorkloadMetaData');
  has DOT_NET_WEB_TIER => (is => 'ro', isa => 'Paws::ApplicationInsights::WorkloadMetaData');
  has DOT_NET_WORKER => (is => 'ro', isa => 'Paws::ApplicationInsights::WorkloadMetaData');
  has JAVA_JMX => (is => 'ro', isa => 'Paws::ApplicationInsights::WorkloadMetaData');
  has MYSQL => (is => 'ro', isa => 'Paws::ApplicationInsights::WorkloadMetaData');
  has ORACLE => (is => 'ro', isa => 'Paws::ApplicationInsights::WorkloadMetaData');
  has POSTGRESQL => (is => 'ro', isa => 'Paws::ApplicationInsights::WorkloadMetaData');
  has SAP_ASE_HIGH_AVAILABILITY => (is => 'ro', isa => 'Paws::ApplicationInsights::WorkloadMetaData');
  has SAP_ASE_SINGLE_NODE => (is => 'ro', isa => 'Paws::ApplicationInsights::WorkloadMetaData');
  has SAP_HANA_HIGH_AVAILABILITY => (is => 'ro', isa => 'Paws::ApplicationInsights::WorkloadMetaData');
  has SAP_HANA_MULTI_NODE => (is => 'ro', isa => 'Paws::ApplicationInsights::WorkloadMetaData');
  has SAP_HANA_SINGLE_NODE => (is => 'ro', isa => 'Paws::ApplicationInsights::WorkloadMetaData');
  has SAP_NETWEAVER_DISTRIBUTED => (is => 'ro', isa => 'Paws::ApplicationInsights::WorkloadMetaData');
  has SAP_NETWEAVER_HIGH_AVAILABILITY => (is => 'ro', isa => 'Paws::ApplicationInsights::WorkloadMetaData');
  has SAP_NETWEAVER_STANDARD => (is => 'ro', isa => 'Paws::ApplicationInsights::WorkloadMetaData');
  has SHAREPOINT => (is => 'ro', isa => 'Paws::ApplicationInsights::WorkloadMetaData');
  has SQL_SERVER => (is => 'ro', isa => 'Paws::ApplicationInsights::WorkloadMetaData');
  has SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP => (is => 'ro', isa => 'Paws::ApplicationInsights::WorkloadMetaData');
  has SQL_SERVER_FAILOVER_CLUSTER_INSTANCE => (is => 'ro', isa => 'Paws::ApplicationInsights::WorkloadMetaData');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::DetectedWorkload

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationInsights::DetectedWorkload object:

  $service_obj->Method(Att1 => { ACTIVE_DIRECTORY => $value, ..., SQL_SERVER_FAILOVER_CLUSTER_INSTANCE => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationInsights::DetectedWorkload object:

  $result = $service_obj->Method(...);
  $result->Att1->ACTIVE_DIRECTORY

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ACTIVE_DIRECTORY => L<Paws::ApplicationInsights::WorkloadMetaData>


=head2 CUSTOM => L<Paws::ApplicationInsights::WorkloadMetaData>


=head2 DEFAULT => L<Paws::ApplicationInsights::WorkloadMetaData>


=head2 DOT_NET_CORE => L<Paws::ApplicationInsights::WorkloadMetaData>


=head2 DOT_NET_WEB => L<Paws::ApplicationInsights::WorkloadMetaData>


=head2 DOT_NET_WEB_TIER => L<Paws::ApplicationInsights::WorkloadMetaData>


=head2 DOT_NET_WORKER => L<Paws::ApplicationInsights::WorkloadMetaData>


=head2 JAVA_JMX => L<Paws::ApplicationInsights::WorkloadMetaData>


=head2 MYSQL => L<Paws::ApplicationInsights::WorkloadMetaData>


=head2 ORACLE => L<Paws::ApplicationInsights::WorkloadMetaData>


=head2 POSTGRESQL => L<Paws::ApplicationInsights::WorkloadMetaData>


=head2 SAP_ASE_HIGH_AVAILABILITY => L<Paws::ApplicationInsights::WorkloadMetaData>


=head2 SAP_ASE_SINGLE_NODE => L<Paws::ApplicationInsights::WorkloadMetaData>


=head2 SAP_HANA_HIGH_AVAILABILITY => L<Paws::ApplicationInsights::WorkloadMetaData>


=head2 SAP_HANA_MULTI_NODE => L<Paws::ApplicationInsights::WorkloadMetaData>


=head2 SAP_HANA_SINGLE_NODE => L<Paws::ApplicationInsights::WorkloadMetaData>


=head2 SAP_NETWEAVER_DISTRIBUTED => L<Paws::ApplicationInsights::WorkloadMetaData>


=head2 SAP_NETWEAVER_HIGH_AVAILABILITY => L<Paws::ApplicationInsights::WorkloadMetaData>


=head2 SAP_NETWEAVER_STANDARD => L<Paws::ApplicationInsights::WorkloadMetaData>


=head2 SHAREPOINT => L<Paws::ApplicationInsights::WorkloadMetaData>


=head2 SQL_SERVER => L<Paws::ApplicationInsights::WorkloadMetaData>


=head2 SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP => L<Paws::ApplicationInsights::WorkloadMetaData>


=head2 SQL_SERVER_FAILOVER_CLUSTER_INSTANCE => L<Paws::ApplicationInsights::WorkloadMetaData>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

